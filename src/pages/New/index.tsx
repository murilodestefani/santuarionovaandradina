import dayjs from "dayjs";
import "dayjs/locale/pt-br";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { NewProps } from "../../interfaces";
import { api } from "../../lib/axios";
import { STRAPI_URL } from "../../env";

export function New() {
  const { slug } = useParams();

  const [noticia, setNoticia] = useState<NewProps | null>(null);

  dayjs.locale("pt-br");

  useEffect(() => {
    const fetchData = async () => {
      try {
        const newsResponse = await api.get(`/news`, {
          params: {
            "filters[slug][$eq]": slug,
            populate: "*",
          },
        });
        const novaNoticia = newsResponse.data.data[0];
        setNoticia(novaNoticia);
      } catch (error) {
        console.error("Erro ao carregar dados:", error);
        // Você pode definir um estado de erro aqui e mostrá-lo ao usuário
      }
    };
    fetchData();
  }, [slug]); // Adicionando slug como uma dependência para recarregar os dados quando mudar

  return (
    <article>
      <div className="-mt-16 flex h-52 w-full bg-penn-red-900"></div>

      {noticia && (
        <div
          key={noticia.id}
          className="container flex flex-col items-center justify-center gap-2 px-4"
        >
          <div className="relative -mt-28 aspect-video w-full overflow-clip rounded-lg">
            <img
              className="w-full object-cover"
              src={`${STRAPI_URL}${noticia.attributes.cover.data.attributes.formats.large.url}`}
              alt={noticia.attributes.cover.data.attributes.alternativeText}
            />
            <div className="absolute end-0 top-0 flex items-center justify-center p-4 text-neutral-50">
              <span className="rounded-md border border-neutral-50/25 bg-black/25 px-2 py-1 text-[8px] font-bold uppercase text-neutral-50 md:border-2 md:px-3 md:text-xs">
                {noticia.attributes.category.data.attributes.name}
              </span>
            </div>
          </div>

          <span className="text-xs text-shark-700 md:text-sm">
            {dayjs(noticia.attributes.date).format("DD")} de{" "}
            {dayjs(noticia.attributes.date).format("MMMM")} de{" "}
            {dayjs(noticia.attributes.date).format("YYYY")}
          </span>

          <h1 className="text-center text-2xl font-bold text-shark-950 md:text-3xl lg:text-4xl">
            {noticia.attributes.title}
          </h1>

          <p className="text-justify text-shark-950 mb-4">
            {noticia.attributes.content}
          </p>
        </div>
      )}
    </article>
  );
}
