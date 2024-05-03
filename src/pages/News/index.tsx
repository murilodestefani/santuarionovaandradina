import { Pagination } from "@nextui-org/react";
import { useEffect, useState } from "react";
import CardNew from "../../components/CardNew";
import { STRAPI_URL } from "../../env";
import { NewProps } from "../../interfaces";
import { api } from "../../lib/axios";

export function News() {
  const [news, setNews] = useState<NewProps[]>([]);
  const [pageIndex, setPageIndex] = useState(1);
  const [meta, setMeta] = useState<any>(null);

  useEffect(() => {
    api
      .get(`/news`, {
        params: {
          populate: "*",
          sort: "date:desc",
          "pagination[page]": pageIndex,
          "pagination[pageSize]": 9,
        },
      })
      .then((response) => {
        const { data, meta } = response.data;
        setNews(data);
        setMeta(meta);
      })
      .catch((error) => console.error("Erro ao carregar news:", error));
  }, [pageIndex]);

  return (
    <section className="flex flex-col items-center justify-center gap-4">
      <div className="relative -mt-16 flex w-full items-center justify-center bg-[url('./assets/img/bg-eventos.jpg')] bg-cover bg-center bg-no-repeat py-12">
        <div className="absolute z-20 h-full w-full bg-gradient-to-t from-black/40 to-black/20"></div>
        <h1 className="z-30 mt-16 text-5xl font-bold text-neutral-50">
          Notícias
        </h1>
      </div>

      <div className="container lg:flex lg:items-center lg:justify-center">
        <div className="flex gap-4 overflow-x-scroll px-4 lg:grid lg:grid-cols-3 lg:overflow-x-hidden lg:px-0">
          {news.map(({ id, attributes }) => (
            <CardNew
              key={id}
              title={attributes.title}
              content={attributes.content}
              category={attributes.category.data.attributes.name}
              imgUrl={`${STRAPI_URL}${attributes.cover.data.attributes.formats.medium.url}`}
              imgAlt={`${STRAPI_URL}${attributes.cover.data.attributes.alternativeText}`}
              link={`/noticias/${attributes.slug}`}
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
