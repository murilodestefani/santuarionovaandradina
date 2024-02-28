import { Button, Card, Image, Link } from "@nextui-org/react";
import { Newspaper } from "@phosphor-icons/react";

export function Noticias() {
  return (
    <section
      id="noticias"
      className="flex min-h-svh items-center justify-center"
    >
      <div className="container flex flex-col gap-10 p-4 py-20">
        <div className="cabecalho flex flex-col gap-2">
          <h6 className="text-center text-xs uppercase tracking-widest text-shark-700 md:text-sm lg:text-base">
            acompanhe as
          </h6>
          <h2 className="text-center text-5xl font-bold text-shark-950">
            Notícias do Santuário
          </h2>
        </div>

        <div className="ultimos-eventos flex items-center justify-center">
          <div className="grid gap-6 sm:grid-cols-3">
            <Link href="#" className="flex max-w-80 flex-col gap-1">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?celebration"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Celebrações
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                01.12.2024
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Comunidade se une para Celebrações Festivas
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                A igreja está vibrante com atividades natalinas, desde corais
                até eventos beneficentes. A decoração festiva e a atmosfera
                acolhedora antecipam celebrações memoráveis. A comunidade se une
                para celebrar não apenas o significado espiritual do Natal, mas
                também para compartilhar a alegria e a generosidade nesta
                temporada especial.
              </p>
            </Link>
            <Link href="#" className="flex max-w-80 flex-col gap-1 hidden md:block">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?message"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Celebrações
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                20.08.2024
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Mensagem Pastoral Toca Corações Abatidos
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                A mensagem pastoral recente trouxe conforto e esperança,
                abordando desafios enfrentados pela comunidade. O pastor
                compartilhou reflexões edificantes, encorajando a confiança na
                fé e a perseverança em tempos difíceis. Membros expressaram
                gratidão pela orientação espiritual, ressaltando como as
                palavras ressoaram profundamente em suas vidas.
              </p>
            </Link>
            <Link href="#" className="flex max-w-80 flex-col gap-1 hidden md:block">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?youth"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Juventude
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                05.09.2024
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Programas Inovadores Fortalecem Envolvimento Jovem
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                A igreja lançou iniciativas emocionantes para envolver a
                juventude, incluindo programas educativos, atividades
                recreativas e grupos de discussão. A resposta entusiasmada dos
                jovens destaca a importância de proporcionar oportunidades
                significativas de participação, promovendo a conexão e o
                desenvolvimento espiritual em um ambiente acolhedor.
              </p>
            </Link>
            <Link href="#" className="flex max-w-80 flex-col gap-1 hidden xl:block">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?spirituality"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Espiritualidade
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                15.06.2024
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Momentos Profundos de Reflexão e Renovação
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                Participantes do retiro experimentaram dias de tranquilidade e
                introspecção, mergulhando em práticas espirituais que
                fortaleceram sua conexão com o divino. Palestras esclarecedoras,
                momentos de oração e meditação guiada criaram um ambiente
                propício para o crescimento espiritual. A jornada culminou em um
                profundo senso de renovação e um compromisso renovado com
                valores fundamentais.
              </p>
            </Link>
            <Link href="#" className="flex max-w-80 flex-col gap-1 hidden xl:block">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?community"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Comunidade
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                05.02.2024
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Projetos Locais Fortalecem Vínculos Fraternos
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                A igreja lançou iniciativas comunitárias locais, desde grupos de
                apoio até eventos sociais, fortalecendo laços dentro e fora da
                congregação. Esses esforços visam promover um senso de
                comunidade mais amplo e solidificar o compromisso com valores
                compartilhados. Membros expressaram gratidão pela oportunidade
                de se envolverem ativamente em projetos que beneficiam a
                sociedade.
              </p>
            </Link>
            <Link href="#" className="flex max-w-80 flex-col gap-1 hidden xl:block">
              <Card isPressable isBlurred className="aspect-square">
                <Image
                  isZoomed
                  removeWrapper
                  className="z-0 h-full w-full object-cover"
                  width="100%"
                  src="https://source.unsplash.com/random/?christmas"
                />
              </Card>
              <Link
                href="#"
                className="absolute right-4 top-4 rounded-md bg-neutral-50/20 p-1 text-xs font-bold uppercase text-neutral-50"
              >
                Natal
              </Link>
              <Link href="#" className="self-start text-tiny text-shark-300">
                25.12.2023
              </Link>
              <h4 className="line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
                Natal: Momentos de Reflexão e Alegria
              </h4>
              <p className="line-clamp-5 text-justify text-xs text-shark-700">
                A celebração de Natal reuniu a comunidade para momentos de
                reflexão, adoração e alegria. Atividades especiais, música
                festiva e uma mensagem inspiradora foram destaque do evento,
                criando um ambiente acolhedor e espiritualmente enriquecedor.
                Membros compartilharam a alegria do Natal e agradeceram pela
                oportunidade de celebrar juntos como uma grande família
                espiritual.
              </p>
            </Link>
          </div>
        </div>

        <Button
          href="#"
          startContent={<Newspaper weight="fill" />}
          className="self-center rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50"
        >
          Ver Todas
        </Button>
      </div>
    </section>
  );
}

export default Noticias;
