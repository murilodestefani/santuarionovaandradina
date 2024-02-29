import { Button, Divider, Link, Image } from "@nextui-org/react";
import {
  FacebookLogo,
  InstagramLogo,
  WhatsappLogo,
  YoutubeLogo,
} from "@phosphor-icons/react";

export function Rodape() {
  return (
    <footer id="rodape" className="bg-penn-red-900 py-6">
      <div className="container flex flex-col items-center gap-6">
        <div className="flex flex-col items-center">
          <Image src="/assets/img/logo.png" />
          <span className="text-center font-bold uppercase tracking-[0.4rem] text-neutral-50">
            Santuário
          </span>
          <span className="text-center text-xl font-bold text-neutral-50">
            Imaculado Coração
            <br /> de Maria
          </span>
        </div>
        <div className="container flex flex-col gap-1 md:flex-row md:justify-center md:gap-6">
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Home
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Santuário
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Galeria
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Atuação
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Notícias
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Missas
          </Link>
          <Link className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base" href="#">
            Contato
          </Link>
        </div>
        <div className="flex gap-4">
          <Button
            href="#"
            as={Link}
            isIconOnly
            isExternal
            radius="full"
            color="default"
            className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
          >
            <FacebookLogo weight="fill" />
          </Button>
          <Button
            href="#"
            as={Link}
            isIconOnly
            isExternal
            radius="full"
            color="default"
            className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
          >
            <InstagramLogo weight="fill" />
          </Button>
          <Button
            href="#"
            as={Link}
            isIconOnly
            isExternal
            radius="full"
            color="default"
            className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
          >
            <YoutubeLogo weight="fill" />
          </Button>
          <Button
            href="#"
            as={Link}
            isIconOnly
            isExternal
            radius="full"
            color="default"
            className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
          >
            <WhatsappLogo weight="fill" />
          </Button>
        </div>
        <Divider className="bg-neutral-50/25" />
        <div className="flex flex-col lg:gap-1">
          <p className="text-center text-tiny text-neutral-50">
            © 2024 - Santuário Imaculado Coração de Maria
          </p>
          <p className="text-center text-tiny text-neutral-50">
            Desenvolvido por{" "}
            <Link
              href="#"
              isExternal
              className="text-center text-tiny text-neutral-50 italic"
            >
              Murilo Destefani
            </Link> e <Link
              href="#"
              isExternal
              className="text-center text-tiny text-neutral-50 italic"
            >Gustavo Marques</Link>
          </p>
        </div>
      </div>
    </footer>
  );
}

export default Rodape;
