import React from "react";
import ReactDOM from "react-dom/client";
import { Home } from "./pages/home";
import "./index.css";
import { NextUIProvider } from "@nextui-org/react";

ReactDOM.createRoot(document.getElementById("root")!).render(
  <NextUIProvider>
    <React.StrictMode>
      <Home />
    </React.StrictMode>
  </NextUIProvider>,
);
