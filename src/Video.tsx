import { Button, Card, Image, Link } from "@nextui-org/react";
import { CaretRight } from "@phosphor-icons/react";

export function Video() {
  return (
    <section
      id="video"
      className="flex items-center justify-center bg-penn-red-900 px-4 py-20 xl:px-0"
    >
      <Card className="container flex flex-col md:flex-row">
        <header className="flex flex-col justify-between gap-1 p-4 xl:justify-center xl:gap-2 xl:p-8">
          <h2 className="text-center text-2xl font-bold text-penn-red-900 md:text-start xl:text-3xl">
            O importante é estar sempre na presença de Deus
          </h2>
          <p className="hidden text-justify text-shark-950 md:block">
            Se você está interessado na história religiosa, deseja encontrar um
            refúgio espiritual ou simplesmente busca por um momento de
            inspiração.
          </p>
          <footer className="flex items-center justify-center md:justify-between">
            <span className="hidden text-tiny font-bold text-shark-700 md:block">
              30.08.2023
            </span>
            <Button variant="light" endContent={<CaretRight />}>
              <span className="text-tiny font-bold text-shark-700">
                VEJA O VÍDEO
              </span>
            </Button>
          </footer>
        </header>
        <Link className="w-full lg:w-2/3">
          <Image
            className="aspect-video h-full rounded-t-none object-cover md:rounded-s-none"
            src="https://source.unsplash.com/random/?comunhão"
          />
        </Link>
      </Card>
    </section>
  );
}
export default Video;
