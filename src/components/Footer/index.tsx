import Logo from "@assets/img/logo-sao-bento.svg";
import { Button, Divider, Image } from "@nextui-org/react";
import {
  FacebookLogo,
  InstagramLogo,
  WhatsappLogo,
  YoutubeLogo,
} from "@phosphor-icons/react";
import { Link } from "react-router-dom";

export function Footer() {
  const currentYear = new Date().getFullYear();

  return (
    <footer id="footer" className="bg-primary py-6">
      <div className="container flex flex-col items-center gap-6">
        <Link
          to={"/"}
          className="flex flex-col items-center gap-1 text-center text-lg font-bold text-background"
        >
          <Image src={Logo} className="h-48" />
          <div className="flex flex-col">
            <p className="uppercase tracking-widest">Igreja</p>
            <p>São Bento Protetor</p>
          </div>
        </Link>
        <div className="container flex flex-col gap-1 md:flex-row md:justify-center md:gap-6">
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/"}
          >
            Home
          </Link>
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/"}
          >
            São Bento
          </Link>
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/"}
          >
            Comunidade
          </Link>
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/"}
          >
            Galeria
          </Link>
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/eventos"}
          >
            Eventos
          </Link>
          <Link
            className="flex justify-center text-tiny text-background md:text-sm xl:text-base"
            to={"/"}
          >
            Devocional
          </Link>
        </div>
        <div className="flex gap-4">
          <a
            href="https://www.facebook.com/"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-background text-2xl text-primary-600 shadow-lg"
            >
              <FacebookLogo weight="fill" />
            </Button>
          </a>

          <a
            href="https://www.instagram.com/"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-background text-2xl text-primary-600 shadow-lg"
            >
              <InstagramLogo weight="fill" />
            </Button>
          </a>

          <a
            href="https://www.youtube.com/"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-background text-2xl text-primary-600 shadow-lg"
            >
              <YoutubeLogo weight="fill" />
            </Button>
          </a>

          <a
            href="https://www.whatsapp.com/channel/0029VaNtl6ALtOjLIECUj608"
            target="_blank"
          >
            <Button
              isIconOnly
              radius="full"
              color="default"
              className="bg-background text-2xl text-primary-600 shadow-lg"
            >
              <WhatsappLogo weight="fill" />
            </Button>
          </a>
        </div>
        <Divider className="bg-background/25" />
        <div className="flex flex-col lg:gap-1">
          <p className="text-center text-tiny text-background">
            © {currentYear} - Igreja São Bento Protetor
          </p>
          <p className="text-center text-tiny text-background">
            Desenvolvido por{" "}
            <a
              href="https://github.com/murilodestefani"
              target="_blank"
              className="text-center text-tiny italic text-background"
            >
              Murilo Destefani
            </a>{" "}
            e{" "}
            <a
              href="https://github.com/GustavoMarquess/GustavoMarquess"
              target="_blank"
              className="text-center text-tiny italic text-background"
            >
              Gustavo Marques
            </a>
          </p>
        </div>
      </div>
    </footer>
  );
}
