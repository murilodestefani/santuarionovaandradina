import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { api } from "../../lib/axios";

interface EventProps {
  id: number;
  attributes: {
    slug: string;
    cover: {
      data: {
        attributes: {
          alternativeText: string;
          formats: {
            medium: {
              url: string;
            };
          };
        };
      };
    };
    title: string;
    date: string;
    category: {
      data: {
        attributes: {
          name: string;
        };
      };
    };
  };
}

export function Event() {
  const { slug } = useParams();

  const [event, setEvent] = useState<EventProps[]>([]);

  useEffect(() => {
    api
      .get(`/events`, {
        params: {
          "filters[slug][$eq]": slug,
        },
      })
      .then(({ data }) => setEvent(data.data))
      .catch((error) => console.error("Erro ao carregar event:", error));
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
            />
            <div className="absolute inset-x-0 bottom-0 flex items-center justify-center p-4 text-neutral-50">
              <span>{event.attributes.date}</span>
            </div>
          </div>
          <h1 className="text-center font-bold">{event.attributes.title}</h1>
        </div>
      ))}
    </article>
  );
}
