import { createBrowserRouter } from "react-router-dom";
import { Home } from "./pages/Home";
import { NotFound } from "./pages/NotFound";
import { Layout } from "./components/layout";
import { Events } from "./pages/Events";
import { Event } from "./pages/Event";

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
        path: "*",
        element: <NotFound />,
      },
    ],
  },
]);

export { router };
