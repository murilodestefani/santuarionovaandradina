import SaoBento from "@assets/img/logo-sao-bento.svg";
import ButtonBackToTop from "@components/ButtonBackToTop";
import {
  Button,
  Dropdown,
  DropdownItem,
  DropdownMenu,
  DropdownTrigger,
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  NavbarMenu,
  NavbarMenuItem,
  NavbarMenuToggle,
} from "@nextui-org/react";
import { CaretDown, WhatsappLogo } from "@phosphor-icons/react";
import React from "react";
import { Link } from "react-router-dom";

export function Header() {
  const [isMenuOpen, setIsMenuOpen] = React.useState(false);

  const menuItems = [
    <Link to={"/"}>Home</Link>,
    <a href="http://localhost:1337/admin" target="_blank">
      Login
    </a>,
  ];

  return (
    <>
      <ButtonBackToTop />
      <Navbar
        maxWidth="2xl"
        onMenuOpenChange={setIsMenuOpen}
        className="bg-black/25"
      >
        <NavbarContent className="flex justify-between">
          <NavbarBrand>
            <Link to="/">
              <img
                className="h-9"
                src={SaoBento}
                alt="Logo da Igreja São Bento Protetor"
              />
            </Link>
          </NavbarBrand>
          <NavbarMenuToggle
            aria-label={isMenuOpen ? "Close menu" : "Open menu"}
            className="relative z-50 flex text-background lg:hidden"
          />
        </NavbarContent>

        <NavbarContent className="hidden gap-4 lg:flex" justify="center">
          <NavbarItem isActive>
            <Link className="text-background" to={"/"}>
              Home
            </Link>
          </NavbarItem>
          <Dropdown>
            <NavbarItem>
              <DropdownTrigger>
                <Button
                  disableRipple
                  className="bg-transparent p-0 text-base text-background data-[hover=true]:bg-transparent"
                  endContent={<CaretDown />}
                  radius="sm"
                  variant="light"
                >
                  São Bento
                </Button>
              </DropdownTrigger>
            </NavbarItem>
            <DropdownMenu>
              <DropdownItem key="História">
                <Link color="foreground" to={"/"}>
                  História
                </Link>
              </DropdownItem>
              <DropdownItem key="Cléro">
                <Link color="foreground" to={"/"}>
                  Cléro
                </Link>
              </DropdownItem>
            </DropdownMenu>
          </Dropdown>
          <Dropdown>
            <NavbarItem>
              <DropdownTrigger>
                <Button
                  disableRipple
                  className="bg-transparent p-0 text-base text-background data-[hover=true]:bg-transparent"
                  endContent={<CaretDown />}
                  radius="sm"
                  variant="light"
                >
                  Galeria
                </Button>
              </DropdownTrigger>
            </NavbarItem>
            <DropdownMenu>
              <DropdownItem key="Fotos">
                <Link color="foreground" to={"/"}>
                  Fotos
                </Link>
              </DropdownItem>
              <DropdownItem key="Vídeos">
                <Link color="foreground" to={"/"}>
                  Vídeos
                </Link>
              </DropdownItem>
            </DropdownMenu>
          </Dropdown>
          <Dropdown>
            <NavbarItem>
              <DropdownTrigger>
                <Button
                  disableRipple
                  className="bg-transparent p-0 text-base text-background data-[hover=true]:bg-transparent"
                  endContent={<CaretDown />}
                  radius="sm"
                  variant="light"
                >
                  Notícias
                </Button>
              </DropdownTrigger>
            </NavbarItem>
            <DropdownMenu>
              <DropdownItem key="Eventos">
                <Link color="foreground" to={"/"}>
                  Eventos
                </Link>
              </DropdownItem>
              <DropdownItem key="Notícias">
                <Link color="foreground" to={"/"}>
                  Notícias
                </Link>
              </DropdownItem>
            </DropdownMenu>
          </Dropdown>
          <NavbarItem>
            <Link className="text-background" to={"/agenda"}>
              Agenda
            </Link>
          </NavbarItem>
        </NavbarContent>
        <NavbarContent justify="end" className="hidden lg:flex">
          <NavbarItem>
            <a
              href="https://www.whatsapp.com/channel/0029VaNtl6ALtOjLIECUj608"
              target="_blank"
            >
              <Button isIconOnly color="primary" variant="faded" radius="sm">
                <WhatsappLogo weight="fill" />
              </Button>
            </a>
          </NavbarItem>
        </NavbarContent>
        <NavbarMenu>
          {menuItems.map((item, index) => (
            <NavbarMenuItem key={`${item}-${index}`}>
              <Link
                color={
                  index === 2
                    ? "primary"
                    : index === menuItems.length - 1
                      ? "danger"
                      : "foreground"
                }
                className="w-full"
                to={"/"}
                // size="lg"
              >
                {item}
              </Link>
            </NavbarMenuItem>
          ))}
        </NavbarMenu>
      </Navbar>
    </>
  );
}
