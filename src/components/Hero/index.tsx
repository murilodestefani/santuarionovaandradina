import { Button } from "@nextui-org/react";

export function Hero() {
  return (
    <section className="z-0 -mt-16 flex h-svh flex-col justify-center bg-black bg-[url('./saintbenedict.jpg')] bg-cover bg-top bg-no-repeat">
      <div className="absolute z-20 h-full w-full bg-black/40"></div>
      <div className="absolute z-30 h-full w-full bg-gradient-to-t from-black/50"></div>
      <div className="container z-30 flex flex-col p-4">
        <div className="flex flex-col gap-2 lg:max-w-xl">
          <h1 className="text-center text-5xl font-bold text-background md:text-6xl xl:text-start xl:text-6xl">
            A Cruz Sagrada seja a minha luz
          </h1>
          <p className="text-justify text-sm text-background sm:text-center sm:text-base xl:text-start">
            "Assim como São Bento, cuja devoção ecoa pelos séculos: 'Ora et labora', que todos encontrem aqui paz e inspiração. Recebam a bênção ao adentrar a página da Igreja de São Bento Protetor, onde a fé floresce e a proteção se faz presente."
          </p>
          <div className="flex justify-center gap-2 xl:justify-start">
            <Button
              href="#"
              color="primary"
              radius="sm"
              className="self-center px-12 py-5 font-semibold"
            >
              Nossa História
            </Button>
            <Button
              href="#"
              color="primary"
              variant="faded"
              radius="sm"
              className="self-center px-12 py-5 font-semibold"
            >
              Últimos Eventos
            </Button>
          </div>
        </div>
      </div>
    </section>
  );
}
