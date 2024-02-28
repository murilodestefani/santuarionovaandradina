import { Button, Card, CardFooter, Image, Link } from "@nextui-org/react";
import { BookmarkSimple, CalendarBlank, Camera } from "@phosphor-icons/react";

export function Eventos() {
  return (
    <section
      id="eventos"
      className="flex min-h-svh items-center justify-center"
    >
      <div className="container flex flex-col gap-10 p-4 py-20">
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
            <Link href="#">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">10 Fev, 2024</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
                      <span className="text-tiny">Anúncios</span>
                    </Link>
                  </div>
                  <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                    Novidades do Ano: Atualizações e Planejamento
                  </h2>
                </CardFooter>
              </Card>
            </Link>
            <Link href="#" className="hidden md:block">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">25 Nov, 2023</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
                      <span className="text-tiny">Mensagens</span>
                    </Link>
                  </div>
                  <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                    Gratidão em Ação: Mensagem de Agradecimento
                  </h2>
                </CardFooter>
              </Card>
            </Link>
            <Link href="#" className="hidden md:block">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">10 Set, 2023</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
                      <span className="text-tiny">Atividades</span>
                    </Link>
                  </div>
                  <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                    Atividades ao Ar Livre: Conectando-se com a Natureza
                  </h2>
                </CardFooter>
              </Card>
            </Link>
            <Link href="#" className="hidden xl:block">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">02 Jul, 2023</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
                      <span className="text-tiny">Espiritualidade</span>
                    </Link>
                  </div>
                  <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                    Jornada de Reflexão: Fortalecendo a Fé
                  </h2>
                </CardFooter>
              </Card>
            </Link>
            <Link href="#" className="hidden xl:block">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">15 Mar, 2023</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
                      <span className="text-tiny">Comunidade</span>
                    </Link>
                  </div>
                  <h2 className="line-clamp-2 text-start font-bold text-neutral-50">
                    Envolvimento Comunitário: Projetos em Andamento
                  </h2>
                </CardFooter>
              </Card>
            </Link>
            <Link href="#" className="hidden xl:block">
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
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <CalendarBlank className="text-lion-500" weight="fill" />
                      <span className="text-tiny">01 Jan, 2023</span>
                    </Link>
                    <Link
                      href="#"
                      className="flex items-center justify-center gap-1 text-neutral-50"
                      color="foreground"
                    >
                      <BookmarkSimple className="text-lion-500" weight="fill" />
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

        <Button
          href="#"
          startContent={<Camera weight="fill" />}
          className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
        >
          Eventos
        </Button>
      </div>
    </section>
  );
}

export default Eventos;
