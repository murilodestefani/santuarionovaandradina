import { Button, Card, CardFooter, Image } from "@nextui-org/react";
import {
  CalendarBlank,
  BookmarkSimple,
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
import ImaculadoCoracao from "../../assets/img/imaculado.png"

export function Home() {
  return (
    <>
      <section
        id="hero"
        className="z-0 -mt-16 flex h-svh flex-col justify-center bg-black bg-[url('./assets/img/MDP04823.jpg')] bg-cover bg-center bg-no-repeat"
      >
        <div className="absolute z-20 h-full w-full bg-black/40"></div>
        <div className="absolute z-30 h-full w-full bg-gradient-to-t from-black/50"></div>
        <div className="container z-30 flex flex-col p-4">
          <div className="flex flex-col gap-2 xl:max-w-xl">
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
          <div className="cabecalho flex flex-col gap-2">
            <h6 className="text-center text-xs uppercase tracking-widest text-shark-700 md:text-sm lg:text-base">
              fique por dentro dos
            </h6>
            <h2 className="text-center text-5xl font-bold text-shark-950">
              Últimos Eventos
            </h2>
          </div>

          <div className="ultimos-eventos flex items-center justify-center">
            <div className="grid gap-6 sm:grid-cols-3">
              <Link to={"/"}>
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?jesus"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">10 Fev, 2024</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Anúncios</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Novidades do Ano: Atualizações e Planejamento
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
              <Link to={"/"} className="hidden md:block">
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?bible"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">25 Nov, 2023</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Mensagens</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Gratidão em Ação: Mensagem de Agradecimento
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
              <Link to={"/"} className="hidden md:block">
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?pray"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">10 Set, 2023</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Atividades</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Atividades ao Ar Livre: Conectando-se com a Natureza
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
              <Link to={"/"} className="hidden xl:block">
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80 xl:block"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?faith"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">02 Jul, 2023</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Espiritualidade</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Jornada de Reflexão: Fortalecendo a Fé
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
              <Link to={"/"} className="hidden xl:block">
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80 xl:block"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?christ"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">15 Mar, 2023</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Comunidade</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Envolvimento Comunitário: Projetos em Andamento
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
              <Link to={"/"} className="hidden xl:block">
                <Card
                  isPressable
                  isFooterBlurred
                  isBlurred
                  className="aspect-2/3 max-w-80 xl:block"
                >
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?heaven"
                  />
                  <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
                    <div className="flex w-full justify-between">
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <CalendarBlank
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">01 Jan, 2023</span>
                      </Link>
                      <Link
                        to={"/"}
                        className="flex items-center justify-center gap-1 text-neutral-50"
                        color="foreground"
                      >
                        <BookmarkSimple
                          className="text-lion-500"
                          weight="fill"
                        />
                        <span className="text-tiny">Eventos</span>
                      </Link>
                    </div>
                    <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                      Início do Ano: Celebração e Renovação Espiritual
                    </h2>
                  </CardFooter>
                </Card>
              </Link>
            </div>
          </div>

          <Link to={"/"}>
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
        className="flex min-h-svh items-center justify-center"
      >
        <div className="container flex flex-col items-center gap-10 p-4 py-20">
          <div className="cabecalho flex flex-col gap-2">
            <h6 className="text-center text-xs uppercase tracking-widest text-shark-700 md:text-sm lg:text-base">
              acompanhe as
            </h6>
            <h2 className="text-center text-5xl font-bold text-shark-950">
              Notícias do Santuário
            </h2>
          </div>

          <div className="flex items-center justify-center">
            <div className="grid gap-6 sm:grid-cols-3">
              <Link to={"/"} className="relative flex max-w-80 flex-col gap-1">
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?celebration"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Celebrações
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  01.12.2024
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Comunidade se une para Celebrações Festivas
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  A igreja está vibrante com atividades natalinas, desde corais
                  até eventos beneficentes. A decoração festiva e a atmosfera
                  acolhedora antecipam celebrações memoráveis. A comunidade se
                  une para celebrar não apenas o significado espiritual do
                  Natal, mas também para compartilhar a alegria e a generosidade
                  nesta temporada especial.
                </p>
              </Link>
              <Link
                to={"/"}
                className="relative hidden max-w-80 flex-col gap-1 md:block"
              >
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?message"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Mensagem
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  20.08.2024
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Mensagem Pastoral Toca Corações Abatidos
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  A mensagem pastoral recente trouxe conforto e esperança,
                  abordando desafios enfrentados pela comunidade. O pastor
                  compartilhou reflexões edificantes, encorajando a confiança na
                  fé e a perseverança em tempos difíceis. Membros expressaram
                  gratidão pela orientação espiritual, ressaltando como as
                  palavras ressoaram profundamente em suas vidas.
                </p>
              </Link>
              <Link
                to={"/"}
                className="relative hidden max-w-80 flex-col gap-1 md:block"
              >
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?youth"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Juventude
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  05.09.2024
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Programas Inovadores Fortalecem Envolvimento Jovem
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  A igreja lançou iniciativas emocionantes para envolver a
                  juventude, incluindo programas educativos, atividades
                  recreativas e grupos de discussão. A resposta entusiasmada dos
                  jovens destaca a importância de proporcionar oportunidades
                  significativas de participação, promovendo a conexão e o
                  desenvolvimento espiritual em um ambiente acolhedor.
                </p>
              </Link>
              <Link
                to={"/"}
                className="relative hidden max-w-80 flex-col gap-1 xl:block"
              >
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?spirituality"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Espiritualidade
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  15.06.2024
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Momentos Profundos de Reflexão e Renovação
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  Participantes do retiro experimentaram dias de tranquilidade e
                  introspecção, mergulhando em práticas espirituais que
                  fortaleceram sua conexão com o divino. Palestras
                  esclarecedoras, momentos de oração e meditação guiada criaram
                  um ambiente propício para o crescimento espiritual. A jornada
                  culminou em um profundo senso de renovação e um compromisso
                  renovado com valores fundamentais.
                </p>
              </Link>
              <Link
                to={"/"}
                className="relative hidden max-w-80 flex-col gap-1 xl:block"
              >
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?community"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Comunidade
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  05.02.2024
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Projetos Locais Fortalecem Vínculos Fraternos
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  A igreja lançou iniciativas comunitárias locais, desde grupos
                  de apoio até eventos sociais, fortalecendo laços dentro e fora
                  da congregação. Esses esforços visam promover um senso de
                  comunidade mais amplo e solidificar o compromisso com valores
                  compartilhados. Membros expressaram gratidão pela oportunidade
                  de se envolverem ativamente em projetos que beneficiam a
                  sociedade.
                </p>
              </Link>
              <Link
                to={"/"}
                className="relative hidden max-w-80 flex-col gap-1 xl:block"
              >
                <Card isPressable isBlurred className="aspect-square">
                  <Image
                    isZoomed
                    removeWrapper
                    className="z-0 h-full w-full object-cover"
                    width="100%"
                    src="https://source.unsplash.com/random/?christmas"
                  />
                </Card>
                <Link
                  to={"/"}
                  className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
                >
                  Natal
                </Link>
                <Link to={"/"} className="self-start text-tiny text-shark-300">
                  25.12.2023
                </Link>
                <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                  Natal: Momentos de Reflexão e Alegria
                </h4>
                <p className="line-clamp-5 text-justify text-xs text-shark-700">
                  A celebração de Natal reuniu a comunidade para momentos de
                  reflexão, adoração e alegria. Atividades especiais, música
                  festiva e uma mensagem inspiradora foram destaque do evento,
                  criando um ambiente acolhedor e espiritualmente enriquecedor.
                  Membros compartilharam a alegria do Natal e agradeceram pela
                  oportunidade de celebrar juntos como uma grande família
                  espiritual.
                </p>
              </Link>
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
          <div className="cabecalho flex flex-col gap-2">
            <h6 className="text-center text-xs uppercase tracking-widest text-shark-700 md:text-sm lg:text-base">
              conheça nossas
            </h6>
            <h2 className="text-center text-5xl font-bold text-shark-950">
              Pastorais, Movimentos e Serviços
            </h2>
          </div>

          <div className="flex items-center justify-center">
            <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
              <Link to={"/"} className="max-w-64 rounded-lg">
                <Card className="flex flex-col items-center">
                  <Image
                    className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                    removeWrapper
                    src="https://source.unsplash.com/random/?random-landscape-oriented-a"
                  />
                  <div className="p flex flex-col items-center gap-1 p-4">
                    <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                      Pastoral da Catequese
                    </h4>
                    <p className="line-clamp-5 text-center text-xs text-shark-700">
                      Venha fazer parte desta experiência de crescimento
                      espiritual, onde a educação religiosa se une à comunhão e
                      ao serviço à comunidade. Através da catequese,
                      fortalecemos nossa ligação com Deus e uns com os outros.
                    </p>
                  </div>
                </Card>
              </Link>
              <Link to={"/"} className="hidden max-w-64 rounded-lg md:block">
                <Card className="flex flex-col items-center">
                  <Image
                    className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                    removeWrapper
                    src="https://source.unsplash.com/random/?random-landscape-oriented-b"
                  />
                  <div className="p flex flex-col items-center gap-1 p-4">
                    <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                      Pastoral do Dizimo
                    </h4>
                    <p className="line-clamp-5 text-center text-xs text-shark-700">
                      É através do seu apoio e contribuição que conseguimos
                      realizar obras que fazem a diferença em nossas vidas e na
                      comunidade. Junte-se a nós nessa jornada de partilha e
                      fortaleça a nossa missão de amor e serviço.
                    </p>
                  </div>
                </Card>
              </Link>
              <Link to={"/"} className="hidden max-w-64 rounded-lg lg:block">
                <Card className="flex flex-col items-center">
                  <Image
                    className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                    removeWrapper
                    src="https://source.unsplash.com/random/?random-landscape-oriented-c"
                  />
                  <div className="p flex flex-col items-center gap-1 p-4">
                    <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                      Renovação Carismática
                    </h4>
                    <p className="line-clamp-5 text-center text-xs text-shark-700">
                      Junte-se a nós todos os domingos para uma experiência
                      espiritual profunda e revigorante na Renovação Carismática
                      da nossa igreja. Descubra o poder da oração, louvor e
                      adoração enquanto nos conectamos com a presença divina.
                    </p>
                  </div>
                </Card>
              </Link>
              <Link to={"/"} className="hidden max-w-64 rounded-lg xl:block">
                <Card className="flex flex-col items-center">
                  <Image
                    className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                    removeWrapper
                    src="https://source.unsplash.com/random/?random-landscape-oriented-d"
                  />
                  <div className="p flex flex-col items-center gap-1 p-4">
                    <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                      ECC
                    </h4>
                    <p className="line-clamp-5 text-center text-xs text-shark-700">
                      Junte-se a nós no ECC, uma jornada de amor e fé que
                      fortalece os laços matrimoniais e a espiritualidade.
                      Nossos encontros transformam vidas, renovam o amor e
                      aproximam casais de Cristo. Venha fazer parte desta
                      bênção!
                    </p>
                  </div>
                </Card>
              </Link>
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
                className="flex gap-1 justify-center items-center text-tiny font-semibold uppercase text-shark-700 xl:text-sm"
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
