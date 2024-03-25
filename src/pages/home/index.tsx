import { Button, Image } from "@nextui-org/react";
import {
  Camera,
  Newspaper,
  BookOpenText,
  CalendarCheck,
  Chats,
  Church,
  HandsPraying,
  MonitorPlay,
  MagnifyingGlass,
  CaretRight,
} from "@phosphor-icons/react";
import { Link } from "react-router-dom";
import Feed01 from "../../assets/img/instagram/01.png";
import Feed02 from "../../assets/img/instagram/02.png";
import Feed03 from "../../assets/img/instagram/03.png";
import Feed04 from "../../assets/img/instagram/04.png";
import Feed05 from "../../assets/img/instagram/05.png";
import Feed06 from "../../assets/img/instagram/06.png";
import Cover from "../../assets/img/video.jpg";
import ImaculadoCoracao from "../../assets/img/imaculado.png";
import Cabecalho from "../../components/Cabecalho";
import CardEvent from "../../components/CardEvent";
import CardPost from "../../components/CardPost";
import { useState, useEffect } from "react";
import CardPastoral from "../../components/CardPastoral";
import { api } from "../../lib/axios";
import { STRAPI_URL } from "../../env";

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
  const [events, setEvents] = useState<Event[]>([]);
  const [posts, setPosts] = useState<Post[]>([]);
  const [pastorals, setPastorals] = useState<Pastoral[]>([]);

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
      <section
        id="hero"
        className="z-0 -mt-16 flex h-svh flex-col justify-center bg-black bg-[url('./assets/img/MDP04823.jpg')] bg-cover bg-center bg-no-repeat"
      >
        <div className="absolute z-20 h-full w-full bg-black/40"></div>
        <div className="absolute z-30 h-full w-full bg-gradient-to-t from-black/50"></div>
        <div className="container z-30 flex flex-col p-4">
          <div className="flex flex-col gap-2 lg:max-w-xl">
            <h1 className="text-center text-5xl font-bold text-neutral-50 md:text-6xl xl:text-start xl:text-6xl">
              Bem-vindo ao Santuário
            </h1>
            <p className="text-justify text-sm text-neutral-50 sm:text-center sm:text-base xl:text-start">
              "Como Maria, que proclamou: 'Todas as gerações me chamarão
              bem-aventurada'. Recebam a bênção ao entrar na página do Santuário
              Diocesano Imaculado Coração de Maria, onde a devoção perdura e a
              paz encontra morada."
            </p>
            <div className="flex justify-center gap-2 xl:justify-start">
              <Button
                href="#"
                className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
              >
                Nossa História
              </Button>
              <Button
                href="#"
                className="self-center rounded-md bg-neutral-50 px-12 py-5 font-semibold text-penn-red-900"
              >
                Últimos Eventos
              </Button>
            </div>
          </div>
        </div>
      </section>
      <section
        id="eventos"
        className="flex min-h-svh items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <Cabecalho subtitle="fique por dentro dos" title="Últimos Eventos" />

          <div className="ultimos-eventos flex items-center justify-center">
            <div className="grid gap-6 sm:grid-cols-3">
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
      <section
        id="slider"
        className="relative z-0 flex h-60 w-full items-center justify-center bg-penn-red-900 bg-[url('./assets/img/MDP04810.jpg')] bg-cover bg-fixed bg-center bg-no-repeat xl:h-96"
      >
        <div className="absolute z-10 h-full w-full bg-gradient-to-t from-black/75"></div>
        <div className="absolute z-10 h-full w-full bg-black/50"></div>
        <div className="gap- container z-20 flex flex-col items-center justify-center p-4">
          <q className="text-center text-2xl font-bold text-neutral-50 md:text-3xl lg:text-4xl">
            Eu sou o caminho, a verdade e a vida.
          </q>
          <p className="italic text-neutral-50 md:text-lg lg:text-xl">
            João 14:06
          </p>
        </div>
      </section>
      <section
        id="noticias"
        className="flex min-h-svh w-full items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <Cabecalho subtitle="acompanhe as" title="Notícias do Santuário" />

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
      <section
        id="atalhos"
        className=" bg-penn-red-900 py-10 md:py-14 lg:py-16 xl:py-20"
      >
        <div className="container grid grid-cols-2 gap-6 md:grid-cols-3 xl:grid-cols-6">
          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <Church className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Horário das Missas
              </span>
            </div>
          </Link>

          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <BookOpenText className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Liturgia Diária
              </span>
            </div>
          </Link>
          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <MonitorPlay className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Santuário Ao Vivo
              </span>
            </div>
          </Link>
          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <CalendarCheck className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Agenda Diocesana
              </span>
            </div>
          </Link>
          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <HandsPraying className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Santo do Dia
              </span>
            </div>
          </Link>
          <Link to={"/"}>
            <div className="flex flex-col items-center gap-1">
              <Button
                isIconOnly
                className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
              >
                <Chats className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
              </Button>
              <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
                Atendimento
              </span>
            </div>
          </Link>
        </div>
      </section>
      <section
        id="movimentos"
        className="flex min-h-svh items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <Cabecalho
            subtitle="conheça nossas"
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
      <section
        id="video"
        className="flex items-center justify-center bg-penn-red-900 px-8 py-16"
      >
        <div className="container flex flex-col overflow-clip rounded-md bg-neutral-50 shadow-lg md:flex-row">
          <div className="flex flex-col gap-2 p-4 md:justify-between xl:p-8">
            <div className="flex flex-col gap-2">
              <h4 className="line-clamp-3 text-xl font-bold text-penn-red-900 lg:text-2xl xl:text-4xl">
                O importante é estar sempre na presença de Deus
              </h4>
              <p className="line-clamp-4 text-justify text-xs text-shark-950 lg:text-sm xl:text-base">
                Se você está interessado na história religiosa, deseja encontrar
                um refúgio espiritual ou simplesmente busca por um momento de
                inspiração.
              </p>
            </div>
            <div className="flex items-center justify-between">
              <span className="text-tiny font-semibold text-shark-700 xl:text-sm">
                30.08.2023
              </span>
              <a
                className="flex items-center justify-center gap-1 text-tiny font-semibold uppercase text-shark-700 xl:text-sm"
                href="#"
                target="_blank"
              >
                veja o vídeo <CaretRight />
              </a>
            </div>
          </div>
          <a className="lg:w-2/3" href="#" target="_blank">
            <Image className="aspect-video" radius="none" src={Cover} />
          </a>
        </div>
      </section>
      <section
        id="oracao"
        className="flex min-h-svh items-center justify-center py-8"
      >
        <div className="container flex flex-col items-center justify-center gap-2 px-4 md:flex-row-reverse">
          <Image className="h-72 md:h-screen" src={ImaculadoCoracao} />
          <div>
            <div className="flex flex-col items-center justify-center">
              <h2 className="text-center text-xl font-bold uppercase text-penn-red-900">
                Ato de Consagração ao
              </h2>
              <span className="text-center text-xl font-bold uppercase text-penn-red-900">
                Imaculado Coração de Maria
              </span>
            </div>

            <p className="mt-1 text-center text-tiny font-semibold lg:text-sm">
              Pedimos vossa permissão ó maria, <br />
              para nos aproximarmos <br />
              do vosso imaculado coração <br />
              e contemplarmos vossa amorosa presença <br />
              <br />
              Pedimos vossa compaixão, <br />
              ó mãe bondosa, <br />
              para entrarmos humildemente <br />
              em vosso santuário, <br />
              mesmo com nossos erros e pecados. <br />
              <br />
              Pedimos vossa intercessão, <br />
              virgem piedosa, <br />
              para nos sentirmos <br />
              amados e poder ser reconciliados <br />
              com teu filho jesus. <br />
              <br />
              Na vossa presença ó imaculado <br />
              coração de maria, <br />
              consagramos-te nossa vida, <br />
              nossas famílias que estão em casa <br />e da nossa diocese. <br />
              <br />
              Pedimos vossa proteção coração <br />
              de maria, sede o nosso refúgio, <br />
              dai-nos sustento para a igreja <br />e a humanidade. <br />
              <br />E pedimos vossa benção, <br />ó maria, para sairmos daqui{" "}
              <br />
              cheios do espirito santo <br />e sermos missionários <br />a teu
              exemplo para a gloria do pai.
              <br />
              <span className="font-bold text-penn-red-900">Amém</span>
            </p>
          </div>
        </div>
      </section>
      <section
        id="instagram"
        className="flex flex-col items-center justify-center gap-2"
      >
        <a
          className="text-tiny font-bold text-shark-950"
          href="https://www.instagram.com/santuarionovaandradina/"
          target="_blank"
        >
          @santuarionovaandradina
        </a>

        <div className="flex w-full justify-center">
          <Image radius="none" src={Feed01} />
          <Image radius="none" src={Feed02} />
          <Image radius="none" src={Feed03} />
          <Image className="hidden md:block" radius="none" src={Feed04} />
          <Image className="hidden lg:block" radius="none" src={Feed05} />
          <Image className="hidden xl:block" radius="none" src={Feed06} />
        </div>
      </section>
    </>
  );
}
