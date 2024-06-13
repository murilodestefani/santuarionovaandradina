import Cover from "/saintbenedict.jpg";
import { Image } from "@nextui-org/react";
import { CaretRight } from "@phosphor-icons/react";

export function Video() {
  return (
    <section className="flex items-center justify-center bg-primary px-8 py-16">
      <div className="container flex flex-col overflow-clip rounded-md bg-neutral-50 shadow-lg md:flex-row">
        <div className="flex flex-col gap-2 p-4 md:justify-between xl:p-8">
          <div className="flex flex-col gap-2">
            <h4 className="line-clamp-3 text-xl font-bold text-primary lg:text-2xl xl:text-4xl">
              São Bento | Documentário
            </h4>
            <p className="line-clamp-4 text-justify text-xs  lg:text-sm xl:text-base">
              A Ordem de São Bento ou Ordem Beneditina (em Latim: Ordo Sancti
              Benedicti, sigla O.S.B.) é a mais antiga ordem religiosa católica
              de clausura monástica que se baseia na observância dos preceitos
              destinados a regular a convivência social. É considerada como a
              iniciadora do chamado movimento monacal.
            </p>
          </div>
          <div className="flex items-center justify-between">
            <span className="text-tiny font-semibold text-primary-600 xl:text-sm">
              30.08.2023
            </span>
            <a
              className="flex items-center justify-center gap-1 text-tiny font-semibold uppercase text-primary-600 xl:text-sm"
              href="#"
              target="_blank"
            >
              veja o vídeo <CaretRight />
            </a>
          </div>
        </div>
        <a className="lg:w-2/3" href="#" target="_blank">
          <iframe
            className="aspect-video h-full w-full object-cover"
            src="https://www.youtube.com/embed/zwLgUZ5cQaE?controls=0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; web-share"
          ></iframe>
        </a>
      </div>
    </section>
  );
}
