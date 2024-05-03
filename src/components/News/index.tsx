import { Button } from "@nextui-org/react";
import { Newspaper } from "@phosphor-icons/react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { STRAPI_URL } from "../../env";
import { api } from "../../lib/axios";
import CardNew from "../CardNew";
import TitleSection from "../TitleSection";
import { NewProps } from "../../interfaces";

export function News() {
  const [news, setNews] = useState<NewProps[]>([]);

  useEffect(() => {
    api
      .get(`/news`, {
        params: {
          populate: "*",
          sort: "date:desc",
          "pagination[start]": 0,
          "pagination[limit]": 6,
          "pagination[withCount]": true,
        },
      })
      .then(({ data }) => setNews(data.data))
      .catch((error) => console.error("Erro ao carregar news:", error));
  }, []);

  return (
    <section className="flex min-h-svh w-full items-center justify-center">
      <div className="container flex flex-col items-center gap-10 p-4 py-20">
        <TitleSection prefix="acompanhe as" title="Notícias do Santuário" />

        <div className="flex items-center justify-center">
          <div className="grid gap-6 sm:grid-cols-3">
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
        <Link to={"/noticias"}>
          <Button
            startContent={<Newspaper weight="fill" />}
            className="rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
          >
            Ver Todas
          </Button>
        </Link>
      </div>
    </section>
  );
}
