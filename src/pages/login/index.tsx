import { Button, Input, Image } from "@nextui-org/react";
import { Eye, EyeSlash } from "@phosphor-icons/react";
import React from "react";
import Logo from "../../assets/img/logo-red.png";
import { Link } from "react-router-dom";

export function Login() {
  const [isVisible, setIsVisible] = React.useState(false);
  const toggleVisibility = () => setIsVisible(!isVisible);

  return (
    <section id="Login" className="flex h-svh w-svw">
      <div className="hidden w-1/2 bg-[url('./assets/img/MDP04823.jpg')] bg-cover bg-center bg-no-repeat xl:block"></div>
      <div className="container flex flex-col justify-center gap-10 p-4 xl:w-1/2 xl:p-10">
        <Link to={"/"} className="flex flex-col items-center">
          <Image src={Logo} />
          <span className="text-center font-bold uppercase tracking-[0.4rem] text-penn-red-900">
            Santuário
          </span>
          <span className="text-center text-xl font-bold text-penn-red-900">
            Imaculado Coração
            <br /> de Maria
          </span>
        </Link>
        <div className="flex flex-col gap-8">
          <h1 className="text-4xl font-bold text-shark-950">Login</h1>
          <p className="text-tiny text-shark-700 md:text-sm xl:text-base">
            Digite seu usuário e senha utilizados em seu cadastro.
          </p>
        </div>

        <Input
          type="email"
          label="Email"
          labelPlacement="outside"
          placeholder="seunome@email.com"
        />
        <Input
          label="Password"
          labelPlacement="outside"
          placeholder="digite sua senha"
          endContent={
            <button
              className="focus:outline-none"
              type="button"
              onClick={toggleVisibility}
            >
              {isVisible ? (
                <EyeSlash
                  weight="fill"
                  className="pointer-events-none text-2xl text-default-400"
                />
              ) : (
                <Eye
                  weight="fill"
                  className="pointer-events-none text-2xl text-default-400"
                />
              )}
            </button>
          }
          type={isVisible ? "text" : "password"}
        />
        <Button className="rounded-md bg-penn-red-900 px-12 py-5 font-semibold text-neutral-50">
          Login
        </Button>
        <Button className="w-fit self-end bg-transparent text-shark-700">
          Esqueceu sua senha?
        </Button>
      </div>
    </section>
  );
}
