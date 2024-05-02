import axios from "axios";
import { useEffect, useState } from "react";
import { Photo } from "../../interfaces";

const PHOTOS_URL = "https://api.flickr.com/services/rest";

export function Teste() {
  const [photos, setPhotos] = useState<Photo[]>([]);

  useEffect(() => {
    const fetchPhotos = async () => {
      try {
        const response = await axios.get(PHOTOS_URL, {
          params: {
            method: "flickr.photosets.getPhotos",
            api_key: import.meta.env.VITE_FLICKR_API_KEY,
            photoset_id: "72177720314810578",
            user_id: import.meta.env.VITE_FLICKR_USER_ID,
            format: "json",
            nojsoncallback: 1,
          },
        });
        setPhotos(response.data.photoset.photo);
      } catch (error) {
        console.error("Error fetching photos:", error);
      }
    };
    fetchPhotos();
  }, []);

  return (
    <section>
      <div className="">
        {photos.map((photo) => (
          <img
            key={photo.id}
            src={`https://farm${photo.farm}.staticflickr.com/${photo.server}/${photo.id}_${photo.secret}.jpg`}
            alt={photo.title}
          />
        ))}
      </div>
    </section>
  );
}
