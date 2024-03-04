import { Header } from "../../components/Header";
import { Hero } from "../../components/Hero";
import { Eventos } from "../../components/Eventos";
import { Slider } from "../../components/Slider";
import { Noticias } from "../../components/Noticias";
import { Atalhos } from "../../components/Atalhos";
import { Movimentos } from "../../components/Movimentos";
import { Video } from "../../components/Video";
import { Oracao } from "../../components/Oracao";
import { Instagram } from "../../components/Instagram";
import { Footer } from "../../components/Footer";

export function Home() {
  return (
    <>
      <Header />
      <Hero />
      <Eventos />
      <Slider />
      <Noticias />
      <Atalhos />
      <Movimentos />
      <Video />
      <Oracao />
      <Instagram />
      <Footer />
    </>
  );
}
