import { Button } from "@nextui-org/react";
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
            <article className="aspect-2/3 flex max-w-80 cursor-pointer flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?jesus')] bg-cover bg-center bg-no-repeat p-6 drop-shadow-xl">
              <div className="info flex justify-between">
                <div className="data flex items-center gap-1">
                  <CalendarBlank className="text-lion-500" weight="fill" />
                  <span className="text-sm text-slate-50">15 Set, 2023</span>
                </div>

                <div className="categoria flex items-center gap-1">
                  <BookmarkSimple className="text-lion-500" weight="fill" />
                  <span className="text-sm text-slate-50">Redentoristas</span>
                </div>
              </div>

              <h4 className="text-xl font-bold text-slate-50">
                Lorem ipsum dolor sit amet consectetur
              </h4>
            </article>
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
