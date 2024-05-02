import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { api } from "../../lib/axios";
import { EventProps, Photo } from "../../interfaces";
import axios from "axios";

const PHOTOS_URL = "https://api.flickr.com/services/rest";

export function Event() {
  const { slug } = useParams();

  const [event, setEvent] = useState<EventProps[]>([]);
  const [photos, setPhotos] = useState<Photo[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const eventsResponse = await api.get(`/events`, {
          params: {
            "filters[slug][$eq]": slug,
          },
        });
        const eventData = eventsResponse.data.data;
        setEvent(eventData);

        if (eventData.length > 0 && eventData[0].attributes.album) {
          const photosResponse = await axios.get(PHOTOS_URL, {
            params: {
              method: "flickr.photosets.getPhotos",
              api_key: import.meta.env.VITE_FLICKR_API_KEY,
              photoset_id: eventData[0].attributes.album,
              user_id: import.meta.env.VITE_FLICKR_USER_ID,
              format: "json",
              nojsoncallback: 1,
            },
          });
          const photosData = photosResponse.data.photoset.photo;
          setPhotos(photosData);
        }
      } catch (error) {
        console.error("Erro ao carregar dados:", error);
      }
    };
    fetchData();
  }, []);

  return (
    <article>
      <div className="-mt-16 flex h-52 w-svw bg-penn-red-900"></div>
      {event.map((event) => (
        <div
          key={event.id}
          className="container flex flex-col items-center justify-center gap-4 px-4"
        >
          <div className="relative -mt-28 overflow-clip rounded-lg">
            <img
              className="aspect-video object-cover"
              src="https://source.unsplash.com/random/?city,night"
              alt="Event"
            />
            <div className="absolute inset-x-0 bottom-0 flex items-center justify-center p-4 text-neutral-50">
              <span>{event.attributes.date}</span>
            </div>
          </div>
          <h1 className="text-center font-bold">{event.attributes.title}</h1>
          <p>{event.attributes.album}</p>
        </div>
      ))}
      <div className="container bg-red-500 grid grid-flow-row-dense grid-cols-3 gap-4 items-center justify-items-center">
        {photos.map((photo) => (
          <img
            key={photo.id}
            src={`https://farm${photo.farm}.staticflickr.com/${photo.server}/${photo.id}_${photo.secret}.jpg`}
            alt={photo.title}
            className="inline-block"
          />
        ))}
      </div>
    </article>
  );
}
