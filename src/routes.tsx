import { Layout } from "@components/layout";
import { Event } from "@pages/Event";
import { Events } from "@pages/Events";
import { Home } from "@pages/Home";
import { New } from "@pages/New";
import { News } from "@pages/News";
import { NotFound } from "@pages/NotFound";
import { createBrowserRouter } from "react-router-dom";

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
        path: "*",
        element: <NotFound />,
      },
    ],
  },
]);

export { router };
