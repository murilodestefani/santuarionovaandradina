import "./App.css";
import Eventos from "./Eventos.tsx";
import Hero from "./Hero.tsx";
import Menu from "./Menu.tsx";
import Slider from "./Slider.tsx";
import Noticias from "./Noticias.tsx";
import Atalhos from "./Atalhos.tsx";
import Movimentos from "./Movimentos.tsx";

function App() {
  return (
    <>
      <Menu />
      <Hero />
      <Eventos />
      <Slider />
      <Noticias />
      <Atalhos />
      <Movimentos/>
    </>
  );
}

export default App;
