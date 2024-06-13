import { useEffect, useState } from "react";
import { VerseProps } from "@/interfaces";

export function Slider() {
  const [verse, setVerse] = useState<VerseProps>();

  useEffect(() => {
    const fetchRandomVerse = async () => {
      const token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHIiOiJUaHUgSnVuIDEzIDIwMjQgMTM6NDE6MjYgR01UKzAwMDAubXVyaWxvY29ycmVpYWRlc3RlZmFuaUBnbWFpbC5jb20iLCJpYXQiOjE3MTgyODYwODZ9.eC6xdozQuiPkSeVurOUWCjbDLtTkMGYRULGV11ivZko";
      const url = "https://www.abibliadigital.com.br/api/verses/nvi/random";

      try {
        const response = await fetch(url, {
          method: "GET",
          headers: {
            Authorization: `Bearer ${token}`,
            "Content-Type": "application/json",
          },
        });

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const data = await response.json();
        setVerse(data);
      } catch (error) {
        console.error(error);
      }
    };

    fetchRandomVerse();
  }, []);

  return (
    <section className="bg-penn-red-900 relative z-0 flex h-60 w-full items-center justify-center bg-[url('/bible.jpg')] bg-cover bg-fixed bg-center bg-no-repeat xl:h-96">
      <div className="absolute z-10 h-full w-full bg-gradient-to-t from-black/75"></div>
      <div className="absolute z-10 h-full w-full bg-black/50"></div>
      <div className="container z-20 flex flex-col items-center justify-center gap-2 p-4">
        <q className="text-center text-xl font-bold text-background md:text-2xl lg:text-3xl">
          {verse?.text}
        </q>
        <p className="italic text-neutral-50 md:text-lg lg:text-xl">
          {verse?.book.name} {verse?.chapter}:{verse?.number}
        </p>
      </div>
    </section>
  );
}
