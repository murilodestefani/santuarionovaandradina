import MedalhaSaoBento from "@assets/img/medalha.png";
import { Image } from "@nextui-org/react";

export function Oracao() {
  return (
    <section className="flex min-h-svh items-center justify-center py-8">
      <div className="container flex flex-col items-center justify-center gap-4 px-4 md:flex-row-reverse xl:flex-col">
        <Image className="h-72" src={MedalhaSaoBento} />
        <div>
          <div className="flex flex-col items-center justify-center text-primary">
            <h2 className="text-center text-xl font-bold lg:text-2xl xl:text-4xl">
              Oração da Medalha de São Bento
            </h2>
          </div>

          <p className="mt-1 text-center text-base font-semibold xl:text-lg">
            A Cruz sagrada seja a minha Luz. <br />
            Não seja o Dragão meu guia. <br />
            Retira-te Satanás! <br />
            Nunca me aconselhes coisas vãs. <br />
            É mal o que tu me ofereces. <br />
            Bebe tu mesmo do teu veneno! <br />
            <span className="text-primary-600">Amém!</span> <br />
          </p>
        </div>
      </div>
    </section>
  );
}
