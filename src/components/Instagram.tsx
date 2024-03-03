import { Link, Image } from "@nextui-org/react";
import Feed01 from "../assets/img/instagram/01.png";
import Feed02 from "../assets/img/instagram/02.png";
import Feed03 from "../assets/img/instagram/03.png";
import Feed04 from "../assets/img/instagram/04.png";
import Feed05 from "../assets/img/instagram/05.png";
import Feed06 from "../assets/img/instagram/06.png";

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
        <Image radius="none" src={Feed01} />
        <Image radius="none" src={Feed02} />
        <Image radius="none" src={Feed03} />
        <Image className="hidden md:block" radius="none" src={Feed04} />
        <Image className="hidden lg:block" radius="none" src={Feed05} />
        <Image className="hidden xl:block" radius="none" src={Feed06} />
      </div>
    </section>
  );
}
