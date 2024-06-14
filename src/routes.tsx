import { Layout } from "@components/layout";
import { Event } from "@pages/Event";
import { Events } from "@pages/Events";
import { Home } from "@pages/Home";
import { New } from "@pages/New";
import { News } from "@pages/News";
import { NotFound } from "@pages/NotFound";
import { createBrowserRouter } from "react-router-dom";
import { HorarioMissa } from "@pages/HorarioMissa";
import { AoVivo } from "@pages/AoVivo";
import { Liturgia } from "@pages/Liturgia";
import { Agenda } from "@pages/Agenda";

const router = createBrowserRouter([
  {
    element: <Layout />,
    children: [
      {
        path: "/",
        element: <Home />,
      },
      {
        path: "/eventos/:slug",
        element: <Event />,
      },
      {
        path: "/eventos",
        element: <Events />,
      },
      {
        path: "/noticias/:slug",
        element: <New />,
      },
      {
        path: "/noticias",
        element: <News />,
      },
      {
        path: "/atalhos/horario-missa",
        element: <HorarioMissa />,
      },
      {
        path: "/atalhos/liturgia",
        element: <Liturgia />,
      },
      {
        path: "/atalhos/ao-vivo",
        element: <AoVivo />,
      },
      {
        path: "/agenda",
        element: <Agenda />,
      },
      {
        path: "*",
        element: <NotFound />,
      },
    ],
  },
]);

export { router };
