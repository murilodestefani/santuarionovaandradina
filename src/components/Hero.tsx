import { Button } from "@nextui-org/react";

export function Hero() {
  return (
    <section
      id="hero"
      className="relative z-0 -mt-16 flex h-svh flex-col justify-center bg-black bg-[url('./assets/img/MDP04823.jpg')] bg-cover bg-center bg-no-repeat"
    >
      <div className="absolute z-20 h-full w-full bg-black/40"></div>
      <div className="absolute z-30 h-full w-full bg-gradient-to-t from-black/50"></div>
      <div className="container z-40 flex flex-col p-4 md:p-0">
        <div className="flex flex-col gap-2 xl:max-w-xl">
          <h1 className="text-center text-5xl font-bold text-neutral-50 md:text-6xl xl:text-start xl:text-6xl">
            Bem-vindo ao Santuário
          </h1>
          <p className="text-justify text-sm text-neutral-50 sm:text-center sm:text-base xl:text-start">
            "Como Maria, que proclamou: 'Todas as gerações me chamarão
            bem-aventurada'. Recebam a bênção ao entrar na página do Santuário
            Diocesano Imaculado Coração de Maria, onde a devoção perdura e a paz
            encontra morada."
          </p>
          <div className="flex justify-center gap-2 xl:justify-start">
            <Button
              href="#"
              className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
            >
              Nossa História
            </Button>
            <Button
              href="#"
              className="self-center rounded-md bg-neutral-50 px-12 py-5 font-semibold text-penn-red-900"
            >
              Últimos Eventos
            </Button>
          </div>
        </div>
      </div>
    </section>
  );
}
