import { Button } from "@nextui-org/react";
import {
  BookOpenText,
  CalendarCheck,
  Chats,
  Church,
  HandsPraying,
  MonitorPlay,
} from "@phosphor-icons/react";
import { Link } from "react-router-dom";

export function Shortcuts() {
  return (
    <section className="bg-primary py-10 md:py-14 lg:py-16 xl:py-20">
      <div className="container grid grid-cols-2 gap-6 md:grid-cols-3 xl:grid-cols-6">
        <Link to={"/atalhos/horario-missa"}>
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <Church className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Horário das Missas
            </span>
          </div>
        </Link>

        <Link to={"/atalhos/liturgia"}>
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <BookOpenText className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Liturgia Diária
            </span>
          </div>
        </Link>
        <Link to={"/atalhos/ao-vivo"}>
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <MonitorPlay className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Igreja Ao Vivo
            </span>
          </div>
        </Link>
        <a href="https://www.diocesedenavirai.org.br/eventos" target="_blank">
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <CalendarCheck className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Agenda Diocesana
            </span>
          </div>
        </a>
        <a
          href="https://www.vaticannews.va/pt/santo-do-dia.html"
          target="_blank"
        >
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <HandsPraying className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Santo do Dia
            </span>
          </div>
        </a>
        <a
          href="https://www.whatsapp.com/channel/0029VaNtl6ALtOjLIECUj608"
          target="_blank"
        >
          <div className="flex flex-col items-center gap-1">
            <Button
              isIconOnly
              className="md:w-18 md:h-18 h-16 w-16 bg-background lg:h-20 lg:w-20"
            >
              <Chats className="size-8 text-primary md:size-10 lg:size-12" />
            </Button>
            <span className="text-tiny font-bold text-background md:text-sm lg:text-base">
              Atendimento
            </span>
          </div>
        </a>
      </div>
    </section>
  );
}
