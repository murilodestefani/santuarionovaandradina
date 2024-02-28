import { Button, Card, CardFooter, Image, Link } from "@nextui-org/react";
import {
  BookmarkSimple,
  CalendarBlank,
  Camera,
  MagnifyingGlass,
} from "@phosphor-icons/react";

export function Movimentos() {
  return (
    <section
      id="movimentos"
      className="flex min-h-svh items-center justify-center"
    >
      <div className="container flex flex-col gap-10 p-4 py-20">
        <div className="cabecalho flex flex-col gap-2">
          <h6 className="text-center text-xs uppercase tracking-widest text-shark-700 md:text-sm lg:text-base">
            conheça nossas
          </h6>
          <h2 className="text-center text-5xl font-bold text-shark-950">
            Pastorais, Movimentos e Serviços
          </h2>
        </div>

        <div className="flex items-center justify-center">
          <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
            <Link href="#" className="max-w-64 rounded-lg">
              <Card className="flex flex-col items-center">
                <Image
                  className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                  removeWrapper
                  src="https://source.unsplash.com/random/?random-landscape-oriented-a"
                />
                <div className="p flex flex-col items-center gap-1 p-4">
                  <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                    Pastoral da Catequese
                  </h4>
                  <p className="line-clamp-5 text-center text-xs text-shark-700">
                    Venha fazer parte desta experiência de crescimento
                    espiritual, onde a educação religiosa se une à comunhão e ao
                    serviço à comunidade. Através da catequese, fortalecemos
                    nossa ligação com Deus e uns com os outros.
                  </p>
                </div>
              </Card>
            </Link>
            <Link href="#" className="hidden max-w-64 rounded-lg md:block">
              <Card className="flex flex-col items-center">
                <Image
                  className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                  removeWrapper
                  src="https://source.unsplash.com/random/?random-landscape-oriented-b"
                />
                <div className="p flex flex-col items-center gap-1 p-4">
                  <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                    Pastoral do Dizimo
                  </h4>
                  <p className="line-clamp-5 text-center text-xs text-shark-700">
                    É através do seu apoio e contribuição que conseguimos
                    realizar obras que fazem a diferença em nossas vidas e na
                    comunidade. Junte-se a nós nessa jornada de partilha e
                    fortaleça a nossa missão de amor e serviço.
                  </p>
                </div>
              </Card>
            </Link>
            <Link href="#" className="hidden max-w-64 rounded-lg lg:block">
              <Card className="flex flex-col items-center">
                <Image
                  className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                  removeWrapper
                  src="https://source.unsplash.com/random/?random-landscape-oriented-c"
                />
                <div className="p flex flex-col items-center gap-1 p-4">
                  <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                    Renovação Carismática
                  </h4>
                  <p className="line-clamp-5 text-center text-xs text-shark-700">
                    Junte-se a nós todos os domingos para uma experiência
                    espiritual profunda e revigorante na Renovação Carismática
                    da nossa igreja. Descubra o poder da oração, louvor e
                    adoração enquanto nos conectamos com a presença divina.
                  </p>
                </div>
              </Card>
            </Link>
            <Link href="#" className="hidden max-w-64 rounded-lg xl:block">
              <Card className="flex flex-col items-center">
                <Image
                  className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
                  removeWrapper
                  src="https://source.unsplash.com/random/?random-landscape-oriented-d"
                />
                <div className="p flex flex-col items-center gap-1 p-4">
                  <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
                    ECC
                  </h4>
                  <p className="line-clamp-5 text-center text-xs text-shark-700">
                    Junte-se a nós no ECC, uma jornada de amor e fé que
                    fortalece os laços matrimoniais e a espiritualidade. Nossos
                    encontros transformam vidas, renovam o amor e aproximam
                    casais de Cristo. Venha fazer parte desta bênção!
                  </p>
                </div>
              </Card>
            </Link>
          </div>
        </div>

        <Button
          href="#"
          startContent={<MagnifyingGlass weight="fill" />}
          className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
        >
          Explore Mais
        </Button>
      </div>
    </section>
  );
}

export default Movimentos;
