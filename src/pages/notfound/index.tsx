import { Button } from "@nextui-org/react";
import { Menu } from "../../components/Menu";
import { Rodape } from "../../components/Rodape";
import { Link } from "react-router-dom";
import { CaretCircleLeft } from "@phosphor-icons/react";

export function NotFound() {
  return (
    <>
      <Menu />
      <section
        id="notfound"
        className="-mt-16 flex h-svh w-svw items-center justify-center bg-neutral-400"
      >
        <div className="container flex flex-col items-center justify-center gap-4">
          <span>Oops!</span>
          <h1>Página não encontrada</h1>
          <h2>404</h2>
          <span>isso é um erro</span>
          <Link to={"/"}>
            <Button startContent={<CaretCircleLeft weight="fill" />}>
              voltar para home
            </Button>
          </Link>
        </div>
      </section>
      <Rodape />
    </>
  );
}
