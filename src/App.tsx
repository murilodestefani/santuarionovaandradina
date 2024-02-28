import "./App.css";
import Eventos from "./Eventos.tsx";
import Hero from "./Hero.tsx";
import Menu from "./Menu.tsx";
import Slider from "./Slider.tsx";
import Noticias from "./Noticias.tsx";

function App() {
  return (
    <>
      <Menu />
      <Hero />
      <Eventos />
      <Slider />
      <Noticias />
    </>
  );
}

export default App;
