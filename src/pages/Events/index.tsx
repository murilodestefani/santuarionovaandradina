import { useEffect, useState } from "react";
import { api } from "../../lib/axios";
import CardEvent from "../../components/CardEvent";
import { STRAPI_URL } from "../../env";

export function Events() {
  interface Event {
    id: number;
    attributes: {
      slug: string;
      cover: {
        data: {
          attributes: {
            alternativeText: string;
            formats: {
              small: {
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

  const [events, setEvents] = useState<Event[]>([]);

  useEffect(() => {
    api
      .get(`/events`, {
        params: {
          populate: "*",
          sort: "date:desc",
        },
      })
      .then(({ data }) => setEvents(data.data))
      .catch((error) => console.error("Erro ao carregar events:", error));
  }, []);

  return (
    <section className="flex flex-col">
      <div className="relative -mt-16 flex w-svw items-center justify-center bg-[url('./assets/img/bg-eventos.jpg')] bg-cover bg-center bg-no-repeat py-12">
        <div className="absolute z-20 h-full w-full bg-gradient-to-t from-black/40 to-black/20"></div>
        <h1 className="z-30 mt-16 text-5xl font-bold text-neutral-50">
          Eventos
        </h1>
      </div>

      <div className="container lg:flex lg:items-center lg:justify-center">
        <div className="overflow-x flex w-svw gap-4 bg-blue-500 p-4 lg:grid lg:grid-cols-3">
          {events.map(({ id, attributes }) => (
            <CardEvent
              key={id}
              title={attributes.title}
              date={attributes.date}
              category={attributes.category.data.attributes.name}
              imgUrl={`${STRAPI_URL}${attributes.cover.data.attributes.formats.small.url}`}
              imgAlt={`${STRAPI_URL}${attributes.cover.data.attributes.alternativeText}`}
              link={`/eventos/${attributes.slug}`}
            />
          ))}
        </div>
      </div>
    </section>
  );
}
