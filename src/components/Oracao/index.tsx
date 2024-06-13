import MedalhaSaoBento from "@assets/img/medalha.png";
import { Image } from "@nextui-org/react";

export function Oracao() {
  return (
    <section className="flex min-h-svh items-center justify-center py-8">
      <div className="container flex flex-col items-center justify-center gap-10 px-4 md:flex-row-reverse">
        <Image className="h-72" src={MedalhaSaoBento} />
        <div>
          <div className="flex flex-col items-center text-primary justify-center">
            <h2 className="text-center text-xl font-bold uppercase text-penn-red-900">
              Oração da Medalha de
            </h2>
            <span className="text-center text-xl font-bold uppercase text-penn-red-900">
              São Bento
            </span>
          </div>

          <p className="mt-1 text-center text-tiny font-semibold lg:text-sm">
          A Cruz sagrada seja a minha Luz. <br />
          Não seja o Dragão meu guia. <br />
          Retira-te Satanás! <br />
          Nunca me aconselhes coisas vãs. <br />
          É mal o que tu me ofereces. <br />
          Bebe tu mesmo do teu veneno! <br />
          </p>
        </div>
      </div>
    </section>
  );
}
