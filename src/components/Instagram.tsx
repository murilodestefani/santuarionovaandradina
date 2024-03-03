import { Link, Image } from "@nextui-org/react";

export function Instagram() {
  return (
    <section
      id="instagram"
      className="flex flex-col items-center justify-center gap-2"
    >
      <Link
        isExternal
        color="foreground"
        className="text-tiny font-bold text-shark-950"
        href="https://www.instagram.com/santuarionovaandradina/"
      >
        @santuarionovaandradina
      </Link>
      <div className="flex w-full justify-center">
        <Image radius="none" src="./assets/img/instagram/01.png" />
        <Image radius="none" src="./assets/img/instagram/02.png" />
        <Image radius="none" src="./assets/img/instagram/03.png" />
        <Image
          className="hidden md:block"
          radius="none"
          src="./assets/img/instagram/04.png"
        />
        <Image
          className="hidden lg:block"
          radius="none"
          src="./assets/img/instagram/05.png"
        />
        <Image
          className="hidden xl:block"
          radius="none"
          src="../assets/img/instagram/06.png"
        />
      </div>
    </section>
  );
}
