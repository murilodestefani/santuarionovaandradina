import { Button } from "@nextui-org/react";

export function Hero() {
  return (
    <>
      <section
        id="hero"
        className="mx-auto flex h-svh flex-col justify-center bg-[url('/assets/img/image.png')] bg-cover bg-center bg-no-repeat -mt-16"
      >
        <div className="container flex flex-col p-4 sm:p-0">
          <div className="flex flex-col xl:max-w-xl gap-2">
            <h2 className="text-center text-2xl font-bold text-slate-50 sm:text-4xl xl:text-start xl:text-6xl">
              Bem-vindo ao Santuário
            </h2>
            <p className="text-justify text-sm text-slate-50 sm:text-center sm:text-base xl:text-start">
              "Como Maria, que proclamou: 'Todas as gerações me chamarão
              bem-aventurada'. Recebam a bênção ao entrar na página do Santuário
              Diocesano Imaculado Coração de Maria, onde a devoção perdura e a
              paz encontra morada."
            </p>
            <div className="flex justify-center gap-2 xl:justify-start">
              <Button
                color="default"
                radius="sm"
                className="bg-penn-red-900 font-semibold text-slate-50 sm:px-16 sm:py-6"
              >
                Nossa História
              </Button>
              <Button
                color="default"
                radius="sm"
                className="bg-slate-50 font-semibold text-penn-red-900 sm:px-16 sm:py-6"
              >
                Últimos Eventos
              </Button>
            </div>
          </div>
        </div>
      </section>
    </>
  );
}

export default Hero;
