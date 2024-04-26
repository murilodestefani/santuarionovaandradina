import { Image } from "@nextui-org/react";
import { CaretRight } from "@phosphor-icons/react";
import Cover from "../../assets/img/video.jpg";

export function Video() {
  return (
    <section className="flex items-center justify-center bg-penn-red-900 px-8 py-16">
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
  );
}
