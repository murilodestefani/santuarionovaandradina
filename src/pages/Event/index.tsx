import { useEffect, useState } from "react";
import { api } from "../../lib/axios";
import { useParams } from "react-router-dom";

interface Event {
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

  const [event, setEvent] = useState<Event[]>([]);

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
    <>
      <h1>Evento</h1>
      <pre>{JSON.stringify(event, null, 2)}</pre>
    </>
  );
}
