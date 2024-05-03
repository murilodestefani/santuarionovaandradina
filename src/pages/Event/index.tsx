import { Button, Link } from "@nextui-org/react";
import { Image } from "@phosphor-icons/react";
import axios from "axios";
import dayjs from "dayjs";
import "dayjs/locale/pt-br";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { STRAPI_URL } from "../../env";
import { EventProps, Photo } from "../../interfaces";
import { api } from "../../lib/axios";

const PHOTOS_URL = "https://api.flickr.com/services/rest";
const ALBUM_URL = `https://www.flickr.com/photos/${import.meta.env.VITE_FLICKR_USER_ID}/albums/`;
const LINK_PHOTO = `https://www.flickr.com/photos/${import.meta.env.VITE_FLICKR_USER_ID}/`;

export function Event() {
  const { slug } = useParams();

  const [event, setEvent] = useState<EventProps | null>(null);
  const [photos, setPhotos] = useState<Photo[]>([]);

  dayjs.locale("pt-br");

  useEffect(() => {
    const fetchData = async () => {
      try {
        const eventsResponse = await api.get(`/events`, {
          params: {
            "filters[slug][$eq]": slug,
            populate: "*",
          },
        });
        const eventData = eventsResponse.data.data[0];
        setEvent(eventData);

        if (eventData && eventData.attributes.album) {
          const photosResponse = await axios.get(PHOTOS_URL, {
            params: {
              method: "flickr.photosets.getPhotos",
              api_key: import.meta.env.VITE_FLICKR_API_KEY,
              photoset_id: eventData.attributes.album,
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

  if (!event) return null;

  return (
    <article>
      <div className="-mt-16 flex h-52 w-full bg-penn-red-900"></div>

      <div
        key={event.id}
        className="container flex flex-col items-center justify-center gap-2 px-4"
      >
        <div className="relative -mt-28 aspect-video w-full overflow-clip rounded-lg">
          <img
            className="w-full object-cover"
            src={`${STRAPI_URL}${event.attributes.cover.data.attributes.formats.large.url}`}
            alt={event.attributes.cover.data.attributes.alternativeText}
          />
          <div className="absolute end-0 top-0 flex items-center justify-center p-4 text-neutral-50">
            <span className="rounded-md border border-neutral-50/25 bg-black/25 px-2 py-1 text-[8px] font-bold uppercase text-neutral-50 md:border-2 md:px-3 md:text-xs">
              {event.attributes.category.data.attributes.name}
            </span>
          </div>
        </div>

        <span className="text-xs text-shark-700 md:text-sm">
          {dayjs(event.attributes.date).format("DD")} de{" "}
          {dayjs(event.attributes.date).format("MMMM")} de{" "}
          {dayjs(event.attributes.date).format("YYYY")}
        </span>

        <h1 className="text-center text-2xl font-bold text-shark-950 md:text-3xl lg:text-4xl">
          {event.attributes.title}
        </h1>

        <p className="text-justify text-shark-950">
          {event.attributes.content}
        </p>

        <Button
          href={`${ALBUM_URL}${event.attributes.album}`}
          as={Link}
          startContent={<Image weight="fill" />}
          className="my-4 rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
          isExternal
        >
          Abrir no Flickr
        </Button>
      </div>

      <div className="container my-4 grid grid-flow-row-dense grid-cols-1 items-center justify-items-center gap-4 px-4 md:grid-cols-2 lg:grid-cols-3">
        {photos.map((photo) => (
          <a
            href={`${LINK_PHOTO}${photo.id}/in/album-${event.attributes.album}/`}
            target="_blank"
          >
            <img
              key={photo.id}
              src={`https://farm${photo.farm}.staticflickr.com/${photo.server}/${photo.id}_${photo.secret}.jpg`}
              alt={photo.title}
              className="inline-block"
            />
          </a>
        ))}
      </div>
    </article>
  );
}
