import { Image } from "@nextui-org/react";

export function Oracao() {
  return (
    <section id="oracao" className="flex min-h-svh items-center justify-center">
      <div className="container flex flex-col items-center">
        <Image className="h-72" src="/assets/img/imaculado.png" />
        <div>
          <h2 className="text-center text-2xl font-bold text-penn-red-900">
            Consagração
          </h2>
          <p className="mt-1 text-center text-tiny">
            Ó Coração Imaculado de Maria,
            <br /> Repleto de bondade, mostrai-nos o Vosso amor. <br />A chama
            do vosso Coração, ó Maria, desça sobre todos os homens! <br />
            Nós Vos amamos infinitamente! <br />
            Imprimi nos nossos corações o verdadeiro amor, <br />
            para que sintamos o desejo de Vos buscar incessantemente. <br />Ó
            Maria, Vós que tendes um Coração suave e humilde <br />
            lembrai-vos de nós quando caírmos no pecado. <br />
            Vós sabeis que todos os homens pecam. <br />
            Concedei que, por meio de Vosso Imaculado e Materno Coração, <br />
            sejamos curados de toda doença espiritual. <br />
            Fazei que possamos sempre contemplar a bondade de Vosso Materno
            Coração
            <br />e nos convertamos por meio da chama do Vosso Coração. <br />
            Amém.
          </p>
        </div>
      </div>
    </section>
  );
}

export default Oracao;
