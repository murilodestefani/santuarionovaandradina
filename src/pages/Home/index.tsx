import { Events } from "@components/Events";
import { Groups } from "@components/Groups";
import { Hero } from "@components/Hero";
import { News } from "@components/News";
import { Oracao } from "@components/Oracao";
import { Shortcuts } from "@components/Shortcuts";
import { Slider } from "@components/Slider";
import { Video } from "@components/Video";

export function Home() {
  return (
    <>
      <Hero />
      <Events />
      <Slider />
      <News />
      <Shortcuts />
      <Groups />
      <Video />
      <Oracao />
    </>
  );
}
