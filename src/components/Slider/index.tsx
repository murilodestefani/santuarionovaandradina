export function Slider() {
  return (
    <section className="relative z-0 flex h-60 w-full items-center justify-center bg-penn-red-900 bg-[url('./assets/img/MDP04810.jpg')] bg-cover bg-fixed bg-center bg-no-repeat xl:h-96">
      <div className="absolute z-10 h-full w-full bg-gradient-to-t from-black/75"></div>
      <div className="absolute z-10 h-full w-full bg-black/50"></div>
      <div className="gap- container z-20 flex flex-col items-center justify-center p-4">
        <q className="text-center text-2xl font-bold text-neutral-50 md:text-3xl lg:text-4xl">
          Eu sou o caminho, a verdade e a vida.
        </q>
        <p className="italic text-neutral-50 md:text-lg lg:text-xl">
          João 14:06
        </p>
      </div>
    </section>
  );
}