import { Button, Card, CardFooter, Image, Link } from "@nextui-org/react";
import { BookmarkSimple, CalendarBlank, Camera } from "@phosphor-icons/react";

export function Eventos() {
  return (
    <section id="eventos" className="min-h-svh">
      <div className="container flex flex-col gap-10 p-4 py-20">
        <div className="cabecalho">
          <h6 className="text-center uppercase text-shark-500">
            fique por dentro dos
          </h6>
          <h3 className="text-center text-5xl font-bold text-shark-950">
            Últimos Eventos
          </h3>
        </div>

        <div className="ultimos-eventos flex items-center justify-center">
          <div className="grid gap-6 sm:grid-cols-3">
            <Card isPressable isFooterBlurred className="aspect-2/3 max-w-80">
              <Image
                removeWrapper
                className="z-0 h-full w-full object-cover"
                width="100%"
                src="https://source.unsplash.com/random/?a"
              />
              <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-white/30">
                <div className="flex w-full justify-between">
                  <Link
                    href="#"
                    className="flex items-center justify-center gap-1 text-slate-50"
                    color="foreground"
                  >
                    <CalendarBlank className="text-lion-500" weight="fill" />
                    <span className="text-tiny">25 Dez, 2024</span>
                  </Link>
                  <Link
                    href="#"
                    className="flex items-center justify-center gap-1 text-slate-50"
                    color="foreground"
                  >
                    <BookmarkSimple className="text-lion-500" weight="fill" />
                    <span className="text-tiny">Categoria</span>
                  </Link>
                </div>
                <h2 className="line-clamp-2 text-start text-xl font-bold text-slate-50">
                  Lorem ipsum dolor sit amet consectetur
                </h2>
              </CardFooter>
            </Card>
          </div>
        </div>

        <Button
          href="#"
          startContent={<Camera weight="fill" />}
          className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-slate-50"
        >
          Eventos
        </Button>
      </div>
    </section>
  );
}

export default Eventos;
