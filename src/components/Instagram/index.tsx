import { Image } from "@nextui-org/react";
import instagram from "../instagram";

export function Instagram() {
  return (
    <section
      id="instagram"
      className="flex flex-col items-center justify-center gap-2"
    >
      <a
        className="text-tiny font-bold text-shark-950"
        href="https://www.instagram.com/santuarionovaandradina/"
        target="_blank"
      >
        @santuarionovaandradina
      </a>

      <div className="flex w-full justify-center">
        {instagram.map((img) => (
          <Image
            className="aspect-square object-cover"
            radius="none"
            src={img}
          />
        ))}
      </div>
    </section>
  );
}
