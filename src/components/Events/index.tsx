import { STRAPI_URL } from "@/env";
import { EventProps } from "@/interfaces";
import CardEvent from "@components/CardEvent";
import TitleSection from "@components/TitleSection";
import { api } from "@lib/axios";
import { Button } from "@nextui-org/react";
import { Camera } from "@phosphor-icons/react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

export function Events() {
  const [events, setEvents] = useState<EventProps[]>([]);

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
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
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
          color="primary"
          radius="sm"
            startContent={<Camera weight="fill" />}
            className="px-12 py-5 font-semibold"
          >
            Outros Eventos
          </Button>
        </Link>
      </div>
    </section>
  );
}
