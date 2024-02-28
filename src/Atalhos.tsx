import { Button } from "@nextui-org/react";
import {
  BookOpenText,
  CalendarCheck,
  Chats,
  Church,
  HandsPraying,
  MonitorPlay,
} from "@phosphor-icons/react";

export function Atalhos() {
  return (
    <section id="atalhos" className=" bg-penn-red-900 py-10 md:py-14 lg:py-16 xl:py-20">
      <div className="container grid grid-cols-2 gap-6 md:grid-cols-3 xl:grid-cols-6">
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <Church className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Horário das Missas
          </span>
        </div>
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <BookOpenText className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Liturgia Diária
          </span>
        </div>
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <MonitorPlay className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Santuário Ao Vivo
          </span>
        </div>
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <CalendarCheck className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Agenda Diocesana
          </span>
        </div>
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <HandsPraying className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Santo do Dia
          </span>
        </div>
        <div className="flex flex-col items-center gap-1">
          <Button
            href="#"
            isIconOnly
            className="md:w-18 md:h-18 h-16 w-16 bg-neutral-50 lg:h-20 lg:w-20"
          >
            <Chats className="size-8 text-penn-red-900 md:size-10 lg:size-12" />
          </Button>
          <span className="text-tiny font-bold text-neutral-50 md:text-sm lg:text-base">
            Atendimento
          </span>
        </div>
      </div>
    </section>
  );
}
export default Atalhos;
