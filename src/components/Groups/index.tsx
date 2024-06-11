import { STRAPI_URL } from "@/env";
import CardGroup from "@components/CardGroup";
import TitleSection from "@components/TitleSection";
import { api } from "@lib/axios";
import { Button } from "@nextui-org/react";
import { MagnifyingGlass } from "@phosphor-icons/react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

interface GroupProps {
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

export function Groups() {
  const [groups, setGroups] = useState<GroupProps[]>([]);

  useEffect(() => {
    api
      .get(`/groups`, {
        params: {
          populate: "*",
          sort: "title",
        },
      })
      .then(({ data }) => setGroups(data.data))
      .catch((error) => console.error("Erro ao carregar grupos:", error));
  }, []);

  return (
    <section className="flex min-h-svh items-center justify-center">
      <div className="container flex flex-col items-center gap-10 p-4 py-20">
        <TitleSection
          prefix="conheça nossas"
          title="Pastorais, Movimentos e Serviços"
        />

        <div className="flex items-center justify-center">
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
            {groups.map(({ id, attributes }) => (
              <CardGroup
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
  );
}
