import { Button } from "@nextui-org/react";
import { MagnifyingGlass, Newspaper } from "@phosphor-icons/react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import CardPastoral from "../../components/CardPastoral";
import CardPost from "../../components/CardPost";
import { Events } from "../../components/Events";
import { Hero } from "../../components/Hero";
import { Instagram } from "../../components/Instagram";
import { Oracao } from "../../components/Oracao";
import { Shortcuts } from "../../components/Shortcuts";
import { Slider } from "../../components/Slider";
import TitleSection from "../../components/TitleSection";
import { Video } from "../../components/Video";
import { STRAPI_URL } from "../../env";
import { api } from "../../lib/axios";

interface Post {
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
    content: string;
    category: {
      data: {
        attributes: {
          name: string;
        };
      };
    };
  };
}

interface Pastoral {
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
    description: string;
  };
}

export function Home() {
  const [posts, setPosts] = useState<Post[]>([]);
  const [pastorals, setPastorals] = useState<Pastoral[]>([]);

  useEffect(() => {
    api
      .get(`/posts`, {
        params: {
          populate: "*",
          sort: "date:desc",
          "pagination[start]": 0,
          "pagination[limit]": 6,
          "pagination[withCount]": true,
        },
      })
      .then(({ data }) => setPosts(data.data))
      .catch((error) => console.error("Erro ao carregar posts:", error));

    api
      .get(`/pastorals`, {
        params: {
          populate: "*",
          sort: "title",
        },
      })
      .then(({ data }) => setPastorals(data.data))
      .catch((error) => console.error("Erro ao carregar pastorals:", error));
  }, []);

  return (
    <>
      <Hero />
      <Events />
      <Slider />
      <section
        id="noticias"
        className="flex min-h-svh w-full items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <TitleSection prefix="acompanhe as" title="Notícias do Santuário" />

          <div className="flex items-center justify-center">
            <div className="grid gap-6 sm:grid-cols-3">
              {posts.map(({ id, attributes }) => (
                <CardPost
                  key={id}
                  title={attributes.title}
                  content={attributes.content}
                  category={attributes.category.data.attributes.name}
                  imgUrl={`${STRAPI_URL}${attributes.cover.data.attributes.formats.small.url}`}
                  imgAlt={`${STRAPI_URL}${attributes.cover.data.attributes.alternativeText}`}
                  link={`${STRAPI_URL}/api/posts/${id}`}
                />
              ))}
            </div>
          </div>
          <Link to={"/"}>
            <Button
              startContent={<Newspaper weight="fill" />}
              className="rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
            >
              Ver Todas
            </Button>
          </Link>
        </div>
      </section>
      <Shortcuts />
      <section
        id="movimentos"
        className="flex min-h-svh items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <TitleSection
            prefix="conheça nossas"
            title="Pastorais, Movimentos e Serviços"
          />

          <div className="flex items-center justify-center">
            <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
              {pastorals.map(({ id, attributes }) => (
                <CardPastoral
                  key={id}
                  title={attributes.title}
                  description={attributes.description}
                  imgUrl={`${STRAPI_URL}${attributes.cover.data.attributes.formats.small.url}`}
                  imgAlt={`${STRAPI_URL}${attributes.cover.data.attributes.alternativeText}`}
                  link={`${STRAPI_URL}/api/pastorals/${id}`}
                />
              ))}
            </div>
          </div>

          <Link to={"/"}>
            <Button
              startContent={<MagnifyingGlass weight="fill" />}
              className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
            >
              Explore Mais
            </Button>
          </Link>
        </div>
      </section>
      <Video />
      <Oracao />
      <Instagram />
    </>
  );
}
