import React from "react";
import {
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  Button,
  NavbarMenu,
  NavbarMenuItem,
  NavbarMenuToggle,
  Dropdown,
  DropdownItem,
  DropdownMenu,
  DropdownTrigger,
} from "@nextui-org/react";
import { CaretDown } from "@phosphor-icons/react";
import Logo from "../assets/img/logo.png";
import { Link } from "react-router-dom";

export function Header() {
  const [isMenuOpen, setIsMenuOpen] = React.useState(false);

  const menuItems = [
    <Link to={"/"}>Home</Link>,
    <Link to={"/teste"}>Teste</Link>,
    <a href="http://localhost:1337/admin" target="_blank">
      Login
    </a>,
  ];

  return (
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
              src={Logo}
              alt="Logo do Santuário Nova Andradina"
            />
          </Link>
        </NavbarBrand>
        <NavbarMenuToggle
          aria-label={isMenuOpen ? "Close menu" : "Open menu"}
          className="relative z-50 flex text-slate-50 lg:hidden"
        />
      </NavbarContent>

      <NavbarContent className="hidden gap-4 lg:flex" justify="center">
        <NavbarItem isActive>
          <Link className="text-slate-50" to={"/"}>
            Home
          </Link>
        </NavbarItem>
        <Dropdown>
          <NavbarItem>
            <DropdownTrigger>
              <Button
                disableRipple
                className="bg-transparent p-0 text-base text-slate-50 data-[hover=true]:bg-transparent"
                endContent={<CaretDown />}
                radius="sm"
                variant="light"
              >
                Santuário
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="História">
              <Link color="foreground" to={"/"}>
                História
              </Link>
            </DropdownItem>
            <DropdownItem key="Missionários Redentoristas">
              <Link color="foreground" to={"/"}>
                Missionários Redentoristas
              </Link>
            </DropdownItem>
            <DropdownItem key="Horários">
              <Link color="foreground" to={"/"}>
                Horários
              </Link>
            </DropdownItem>
            <DropdownItem key="Festa do Padroeiro">
              <Link color="foreground" to={"/"}>
                Festa do Padroeiro
              </Link>
            </DropdownItem>
            <DropdownItem key="Loja">
              <Link color="foreground" to={"/"}>
                Loja
              </Link>
            </DropdownItem>
            <DropdownItem key="Comunidades">
              <Link color="foreground" to={"/"}>
                Comunidades
              </Link>
            </DropdownItem>
            <DropdownItem key="Sacramentos">
              <Link color="foreground" to={"/"}>
                Sacramentos
              </Link>
            </DropdownItem>
            <DropdownItem key="Expediente">
              <Link color="foreground" to={"/"}>
                Expediente
              </Link>
            </DropdownItem>
            <DropdownItem key="Peregrinação Diocesana">
              <Link color="foreground" to={"/"}>
                Peregrinação Diocesana
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
        <Dropdown>
          <NavbarItem>
            <DropdownTrigger>
              <Button
                disableRipple
                className="bg-transparent p-0 text-base text-slate-50 data-[hover=true]:bg-transparent"
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
            <DropdownItem key="Documentos p/ Sacramento">
              <Link color="foreground" to={"/"}>
                Documentos p/ Sacramento
              </Link>
            </DropdownItem>
            <DropdownItem key="Media Kit">
              <Link color="foreground" to={"/"}>
                Media Kit
              </Link>
            </DropdownItem>
            <DropdownItem key="Calendário Paroquial">
              <Link color="foreground" to={"/"}>
                Calendário Paroquial
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
        <Dropdown>
          <NavbarItem>
            <DropdownTrigger>
              <Button
                disableRipple
                className="bg-transparent p-0 text-base text-slate-50 data-[hover=true]:bg-transparent"
                endContent={<CaretDown />}
                radius="sm"
                variant="light"
              >
                Atuação
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Pastorais">
              <Link color="foreground" to={"/"}>
                Pastorais
              </Link>
            </DropdownItem>
            <DropdownItem key="Movimentos">
              <Link color="foreground" to={"/"}>
                Movimentos
              </Link>
            </DropdownItem>
            <DropdownItem key="Serviços">
              <Link color="foreground" to={"/"}>
                Serviços
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
        <Dropdown>
          <NavbarItem>
            <DropdownTrigger>
              <Button
                disableRipple
                className="bg-transparent p-0 text-base text-slate-50 data-[hover=true]:bg-transparent"
                endContent={<CaretDown />}
                radius="sm"
                variant="light"
              >
                Notícias
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Artigos e Publicações">
              <Link color="foreground" to={"/"}>
                Artigos e Publicações
              </Link>
            </DropdownItem>
            <DropdownItem key="Eventos">
              <Link color="foreground" to={"/"}>
                Eventos
              </Link>
            </DropdownItem>
            <DropdownItem key="Redes Sociais">
              <Link color="foreground" to={"/"}>
                Redes Sociais
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
        <Dropdown>
          <NavbarItem>
            <DropdownTrigger>
              <Button
                disableRipple
                className="bg-transparent p-0 text-base text-slate-50 data-[hover=true]:bg-transparent"
                endContent={<CaretDown />}
                radius="sm"
                variant="light"
              >
                Missas
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Novena Perpétua">
              <Link color="foreground" to={"/"}>
                Novena Perpétua
              </Link>
            </DropdownItem>
            <DropdownItem key="Missa do Sagrado Coração">
              <Link color="foreground" to={"/"}>
                Missa do Sagrado Coração
              </Link>
            </DropdownItem>
            <DropdownItem key="Missa das Rosas">
              <Link color="foreground" to={"/"}>
                Missa das Rosas
              </Link>
            </DropdownItem>
            <DropdownItem key="Sábado Votivo">
              <Link color="foreground" to={"/"}>
                Sábado Votivo
              </Link>
            </DropdownItem>
            <DropdownItem key="Quinta Eucaristica">
              <Link color="foreground" to={"/"}>
                Quinta Eucaristica
              </Link>
            </DropdownItem>
            <DropdownItem key="Missas Dominicais">
              <Link color="foreground" to={"/"}>
                Missas Dominicais
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
      </NavbarContent>
      <NavbarContent justify="end" className="hidden lg:flex">
        <NavbarItem>
          <Link to={"/"}>
            <Button
              variant="ghost"
              className="rounded-md bg-transparent px-12 py-5 text-neutral-50"
            >
              Contato
            </Button>
          </Link>
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
  );
}
