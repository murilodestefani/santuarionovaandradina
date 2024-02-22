import { Button } from "@nextui-org/react";
import { BookmarkSimple, CalendarBlank, Camera } from "@phosphor-icons/react";

export function Eventos() {
  return (
    <section id="eventos" className="min-h-svh">
      <div className="container flex flex-col gap-10 p-4 py-20">
        <div className="cabecalho">
          <h6 className="text-shark-500 text-center uppercase">
            fique por dentro dos
          </h6>
          <h3 className="text-shark-950 text-center text-5xl font-bold">
            Últimos Eventos
          </h3>
        </div>

        <div className="eventos-recentes flex items-center justify-center">
          <div className="grid gap-6 sm:grid-cols-3">
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?jesus')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?church')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?bible')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?god')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?priest')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
            <article className="flex h-96 max-w-80 flex-col justify-end gap-2 rounded-2xl bg-[url('https://source.unsplash.com/random/?igreja')] bg-cover bg-center bg-no-repeat p-6">
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
                Ordenação Presbiteral - Pe. Sócrates Pavon
              </h4>
            </article>
          </div>
        </div>

        <Button
          href="#"
          color="default"
          radius="sm"
          startContent={<Camera weight="fill" />}
          className="w-fit self-center bg-penn-red-900 font-semibold text-slate-50 sm:px-16 sm:py-6"
        >
          Eventos
        </Button>
      </div>
    </section>
  );
}

export default Eventos;
