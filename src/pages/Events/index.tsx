import { STRAPI_URL } from "@/env";
import { EventProps } from "@/interfaces";
import CardEvent from "@components/CardEvent";
import { api } from "@lib/axios";
import { Pagination } from "@nextui-org/react";
import { useEffect, useState } from "react";

export function Events() {
  const [events, setEvents] = useState<EventProps[]>([]);
  const [pageIndex, setPageIndex] = useState(1);
  const [meta, setMeta] = useState<any>(null);

  useEffect(() => {
    api
      .get(`/events`, {
        params: {
          populate: "*",
          sort: "date:desc",
          "pagination[page]": pageIndex,
          "pagination[pageSize]": 9,
        },
      })
      .then((response) => {
        const { data, meta } = response.data;
        setEvents(data);
        setMeta(meta);
      })
      .catch((error) => console.error("Erro ao carregar events:", error));
  }, [pageIndex]);

  return (
    <section className="flex flex-col items-center justify-center gap-4">
      <div className="relative -mt-16 flex w-full items-center justify-center bg-[url('./assets/img/bg-eventos.jpg')] bg-cover bg-center bg-no-repeat py-12">
        <div className="absolute z-20 h-full w-full bg-gradient-to-t from-black/40 to-black/20"></div>
        <h1 className="z-30 mt-16 text-5xl font-bold text-neutral-50">
          Eventos
        </h1>
      </div>

      <div className="container lg:flex lg:items-center lg:justify-center">
        <div className="flex gap-4 overflow-x-scroll px-4 lg:grid lg:grid-cols-3 lg:overflow-x-hidden lg:px-0">
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

      {meta && (
        <Pagination
          className="pb-8"
          page={pageIndex}
          total={meta.pagination.pageCount}
          onChange={(newPageIndex) => {
            if (
              newPageIndex >= 1 &&
              newPageIndex <= meta.pagination.pageCount
            ) {
              setPageIndex(newPageIndex);
            } else if (newPageIndex < 1) {
              setPageIndex(meta.pagination.pageCount);
            } else {
              setPageIndex(1);
            }
          }}
        />
      )}
    </section>
  );
}
