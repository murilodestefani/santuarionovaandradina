import { CalendarBlank, Clock } from "@phosphor-icons/react";

export function HorarioMissa() {
  return (
    <section className="z-0 -mt-16 flex min-h-svh w-full items-center justify-center bg-black bg-[url('/bg-horario.jpg')] bg-cover bg-center bg-no-repeat">
      <div className="absolute z-10 h-full w-full bg-black/60"></div>
      <div className="absolute z-20 h-full w-full bg-gradient-to-t from-black/50"></div>
      <div className="container absolute z-30 mt-16 flex flex-col items-center justify-center gap-4 p-4 text-background">
        <h1 className="text-center text-3xl font-extrabold md:text-4xl lg:w-2/3 lg:text-5xl">
          Horário das Missas
        </h1>

        <div className="flex flex-col gap-2 text-lg">
          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Domingo
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 9:30h | 12h | 15h | 18h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Segunda
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 15:30h | 18h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Terça
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 18h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Quarta
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 18h | 20h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Quinta
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 16h | 18:30h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Sexta
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 18h
            </p>
          </div>

          <div className="flex flex-col">
            <h3 className="flex items-center justify-start gap-1 font-bold">
              <CalendarBlank className="text-primary-400" weight="fill" />
              Sábado
            </h3>
            <p className="flex items-center justify-start gap-1">
              <Clock className="text-primary-400" weight="fill" />
              7h | 12h | 16h | 18:30h
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
