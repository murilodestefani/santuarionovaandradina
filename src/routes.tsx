import { createBrowserRouter } from "react-router-dom";
import { Layout } from "./components/layout";
import { Event } from "./pages/Event";
import { Events } from "./pages/Events";
import { Home } from "./pages/Home";
import { NotFound } from "./pages/NotFound";
import { Teste } from "./pages/Teste";
import { News } from "./pages/News";
import { New } from "./pages/New";

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
        path: "/teste",
        element: <Teste />,
      },
      {
        path: "*",
        element: <NotFound />,
      },
    ],
  },
]);

export { router };
