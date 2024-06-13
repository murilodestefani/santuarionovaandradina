import { STRAPI_URL } from "@/env";
import CardGroup from "@components/CardGroup";
import TitleSection from "@components/TitleSection";
import { api } from "@lib/axios";
import { Button } from "@nextui-org/react";
import { MagnifyingGlass } from "@phosphor-icons/react";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { GroupProps } from "@/interfaces";

export function Groups() {
  const [groups, setGroups] = useState<GroupProps[]>([]);

  useEffect(() => {
    api
      .get(`/groups`, {
        params: {
          populate: "*",
          sort: "title",
          "pagination[start]": 0,
          "pagination[limit]": 4,
          "pagination[withCount]": true,
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

        <Link to={"/grupos"}>
          <Button
            color="primary"
            radius="sm"
            startContent={<MagnifyingGlass weight="fill" />}
            className="px-12 py-5 font-semibold"
          >
            Saiba Mais
          </Button>
        </Link>
      </div>
    </section>
  );
}
