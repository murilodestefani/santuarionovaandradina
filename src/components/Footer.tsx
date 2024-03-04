import { Button, Divider, Image } from "@nextui-org/react";
import {
  FacebookLogo,
  InstagramLogo,
  WhatsappLogo,
  YoutubeLogo,
} from "@phosphor-icons/react";
import Logo from "../assets/img/logo.png";
import { Link } from "react-router-dom";

export function Footer() {
  return (
    <footer id="footer" className="bg-penn-red-900 py-6">
      <div className="container flex flex-col items-center gap-6">
        <Link to={"/"} className="flex flex-col items-center">
          <Image src={Logo} />
          <span className="text-center font-bold uppercase tracking-[0.4rem] text-neutral-50">
            Santuário
          </span>
          <span className="text-center text-xl font-bold text-neutral-50">
            Imaculado Coração
            <br /> de Maria
          </span>
        </Link>
        <div className="container flex flex-col gap-1 md:flex-row md:justify-center md:gap-6">
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Home
          </Link>
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Santuário
          </Link>
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Comunidade
          </Link>
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Galeria
          </Link>
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Eventos
          </Link>
          <Link
            className="justify-center text-tiny text-neutral-50 md:text-sm xl:text-base"
            to={"/"}
          >
            Devocional
          </Link>
        </div>
        <div className="flex gap-4">
          <a
            href="https://www.facebook.com/santuarionovaandradina"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
            >
              <FacebookLogo weight="fill" />
            </Button>
          </a>

          <a
            href="https://www.instagram.com/santuarionovaandradina/"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
            >
              <InstagramLogo weight="fill" />
            </Button>
          </a>

          <a
            href="https://www.youtube.com/@santuarionovaandradinaa"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
            >
              <YoutubeLogo weight="fill" />
            </Button>
          </a>

          <a href="#" target="_blank">
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-neutral-50 text-2xl text-penn-red-900 shadow-lg"
            >
              <WhatsappLogo weight="fill" />
            </Button>
          </a>
        </div>
        <Divider className="bg-neutral-50/25" />
        <div className="flex flex-col lg:gap-1">
          <p className="text-center text-tiny text-neutral-50">
            © 2024 - Santuário Imaculado Coração de Maria
          </p>
          <p className="text-center text-tiny text-neutral-50">
            Desenvolvido por{" "}
            <a
              href="https://github.com/murilodestefani"
              target="_blank"
              className="text-center text-tiny italic text-neutral-50"
            >
              Murilo Destefani
            </a>{" "}
            e{" "}
            <a
              href="https://github.com/GustavoMarquess/GustavoMarquess"
              target="_blank"
              className="text-center text-tiny italic text-neutral-50"
            >
              Gustavo Marques
            </a>
          </p>
        </div>
      </div>
    </footer>
  );
}
