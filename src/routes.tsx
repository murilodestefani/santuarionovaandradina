import { createBrowserRouter } from "react-router-dom";
import { Layout } from "./components/layout";
import { Event } from "./pages/Event";
import { Events } from "./pages/Events";
import { Home } from "./pages/Home";
import { NotFound } from "./pages/NotFound";

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
