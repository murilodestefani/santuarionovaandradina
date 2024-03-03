import { Image } from "@nextui-org/react";
import ImaculadoCoracao from "../assets/img/imaculado.png"

export function Oracao() {
  return (
    <section id="oracao" className="flex min-h-svh items-center justify-center py-8">
      <div className="container flex flex-col items-center justify-center gap-2 px-4 md:flex-row-reverse">
        <Image
          className="h-72 md:h-screen"
          src={ImaculadoCoracao}
        />
        <div>
          <div className="flex flex-col items-center justify-center">
            <h2 className="text-center text-xl font-bold uppercase text-penn-red-900">
              Ato de Consagração ao
            </h2>
            <span className="text-center text-xl font-bold uppercase text-penn-red-900">
              Imaculado Coração de Maria
            </span>
          </div>

          <p className="mt-1 text-center text-tiny font-semibold lg:text-sm">
            Pedimos vossa permissão ó maria, <br />
            para nos aproximarmos <br />
            do vosso imaculado coração <br />
            e contemplarmos vossa amorosa presença <br />
            <br />
            Pedimos vossa compaixão, <br />
            ó mãe bondosa, <br />
            para entrarmos humildemente <br />
            em vosso santuário, <br />
            mesmo com nossos erros e pecados. <br />
            <br />
            Pedimos vossa intercessão, <br />
            virgem piedosa, <br />
            para nos sentirmos <br />
            amados e poder ser reconciliados <br />
            com teu filho jesus. <br />
            <br />
            Na vossa presença ó imaculado <br />
            coração de maria, <br />
            consagramos-te nossa vida, <br />
            nossas famílias que estão em casa <br />e da nossa diocese. <br />
            <br />
            Pedimos vossa proteção coração <br />
            de maria, sede o nosso refúgio, <br />
            dai-nos sustento para a igreja <br />e a humanidade. <br />
            <br />E pedimos vossa benção, <br />ó maria, para sairmos daqui{" "}
            <br />
            cheios do espirito santo <br />e sermos missionários <br />a teu
            exemplo para a gloria do pai.
            <br />
            <span className="font-bold text-penn-red-900">Amém</span>
          </p>
        </div>
      </div>
    </section>
  );
}