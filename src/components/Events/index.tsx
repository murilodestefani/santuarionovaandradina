import { useEffect, useState } from "react";
import { api } from "../../lib/axios";
import { Button } from "@nextui-org/react";
import { Camera } from "@phosphor-icons/react";
import { Link } from "react-router-dom";
import { STRAPI_URL } from "../../env";
import CardEvent from "../CardEvent";
import TitleSection from "../TitleSection";

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

export function Events() {
  const [events, setEvents] = useState<Event[]>([]);

  useEffect(() => {
    api
      .get(`/events`, {
        params: {
          populate: "*",
          sort: "date:desc",
          "pagination[start]": 0,
          "pagination[limit]": 6,
          "pagination[withCount]": true,
        },
      })
      .then(({ data }) => setEvents(data.data))
      .catch((error) => console.error("Erro ao carregar events:", error));
  }, []);

  return (
    <section className="flex min-h-svh items-center justify-center">
      <div className="container flex flex-col items-center gap-10 p-4 py-20">
        <TitleSection prefix="fique por dentro dos" title="Últimos Eventos" />

        <div className="flex items-center justify-center">
          <div className="grid gap-6 sm:grid-cols-3">
            {events.map(({ id, attributes }) => (
              <CardEvent
                key={id}
                title={attributes.title}
                date={attributes.date}
                category={attributes.category.data.attributes.name}
                imgUrl={`${STRAPI_URL}${attributes.cover.data.attributes.formats.medium.url}`}
                imgAlt={`${STRAPI_URL}${attributes.cover.data.attributes.alternativeText}`}
                link={`/eventos/${attributes.slug}`}
              />
            ))}
          </div>
        </div>

        <Link to={"/eventos"}>
          <Button
            startContent={<Camera weight="fill" />}
            className="rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
          >
            Eventos
          </Button>
        </Link>
      </div>
    </section>
  );
}
