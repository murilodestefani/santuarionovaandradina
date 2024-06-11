import { Footer } from "@components/Footer";
import { Header } from "@components/Header";
import { Outlet } from "react-router-dom";

export function Layout() {
  return (
    <>
      <Header />
      <Outlet />
      <Footer />
    </>
  );
}
