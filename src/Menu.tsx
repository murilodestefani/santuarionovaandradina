import React from "react";
import {
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  Link,
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

export function Menu() {
  const [isMenuOpen, setIsMenuOpen] = React.useState(false);

  const menuItems = [
    <Link href="#" color="foreground">
      Home
    </Link>,
    <Link href="#" color="foreground">
      Santuário
    </Link>,
    <Link href="#" color="foreground">
      Comunidade
    </Link>,
    <Link href="#" color="foreground">
      Galeria
    </Link>,
    <Link href="#" color="foreground">
      Eventos
    </Link>,
    <Link href="#" color="foreground">
      Devocional
    </Link>,
    <Link href="#" color="foreground">
      Contato
    </Link>,
  ];

  return (
    <Navbar onMenuOpenChange={setIsMenuOpen} className="bg-transparent">
      <NavbarContent>
        <NavbarMenuToggle
          aria-label={isMenuOpen ? "Close menu" : "Open menu"}
          className="flex text-slate-50 sm:hidden"
        />
        <NavbarBrand>
          <Link href="/">
            <img
              className="h-9"
              src="/assets/img/logo.png"
              alt="Logo do Santuário Nova Andradina"
            />
          </Link>
        </NavbarBrand>
      </NavbarContent>

      <NavbarContent className="hidden gap-4 sm:flex" justify="center">
        <NavbarItem isActive>
          <Link className="text-slate-50" href="#">
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
              <Link color="foreground" href="#">
                História
              </Link>
            </DropdownItem>
            <DropdownItem key="Missionários Redentoristas">
              <Link color="foreground" href="#">
                Missionários Redentoristas
              </Link>
            </DropdownItem>
            <DropdownItem key="Horários">
              <Link color="foreground" href="#">
                Horários
              </Link>
            </DropdownItem>
            <DropdownItem key="Festa do Padroeiro">
              <Link color="foreground" href="#">
                Festa do Padroeiro
              </Link>
            </DropdownItem>
            <DropdownItem key="Loja">
              <Link color="foreground" href="#">
                Loja
              </Link>
            </DropdownItem>
            <DropdownItem key="Comunidades">
              <Link color="foreground" href="#">
                Comunidades
              </Link>
            </DropdownItem>
            <DropdownItem key="Sacramentos">
              <Link color="foreground" href="#">
                Sacramentos
              </Link>
            </DropdownItem>
            <DropdownItem key="Expediente">
              <Link color="foreground" href="#">
                Expediente
              </Link>
            </DropdownItem>
            <DropdownItem key="Peregrinação Diocesana">
              <Link color="foreground" href="#">
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
              <Link color="foreground" href="#">
                Fotos
              </Link>
            </DropdownItem>
            <DropdownItem key="Vídeos">
              <Link color="foreground" href="#">
                Vídeos
              </Link>
            </DropdownItem>
            <DropdownItem key="Documentos p/ Sacramento">
              <Link color="foreground" href="#">
                Documentos p/ Sacramento
              </Link>
            </DropdownItem>
            <DropdownItem key="Media Kit">
              <Link color="foreground" href="#">
                Media Kit
              </Link>
            </DropdownItem>
            <DropdownItem key="Calendário Paroquial">
              <Link color="foreground" href="#">
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
              <Link color="foreground" href="#">
                Pastorais
              </Link>
            </DropdownItem>
            <DropdownItem key="Movimentos">
              <Link color="foreground" href="#">
                Movimentos
              </Link>
            </DropdownItem>
            <DropdownItem key="Serviços">
              <Link color="foreground" href="#">
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
              <Link color="foreground" href="#">
                Artigos e Publicações
              </Link>
            </DropdownItem>
            <DropdownItem key="Eventos">
              <Link color="foreground" href="#">
                Eventos
              </Link>
            </DropdownItem>
            <DropdownItem key="Redes Sociais">
              <Link color="foreground" href="#">
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
              <Link color="foreground" href="#">
                Novena Perpétua
              </Link>
            </DropdownItem>
            <DropdownItem key="Missa do Sagrado Coração">
              <Link color="foreground" href="#">
                Missa do Sagrado Coração
              </Link>
            </DropdownItem>
            <DropdownItem key="Missa das Rosas">
              <Link color="foreground" href="#">
                Missa das Rosas
              </Link>
            </DropdownItem>
            <DropdownItem key="Sábado Votivo">
              <Link color="foreground" href="#">
                Sábado Votivo
              </Link>
            </DropdownItem>
            <DropdownItem key="Quinta Eucaristica">
              <Link color="foreground" href="#">
                Quinta Eucaristica
              </Link>
            </DropdownItem>
            <DropdownItem key="Missas Dominicais">
              <Link color="foreground" href="#">
                Missas Dominicais
              </Link>
            </DropdownItem>
            
          </DropdownMenu>
        </Dropdown>
      </NavbarContent>
      <NavbarContent justify="end">
        <NavbarItem>
          <Button
            as={Link}
            color="default"
            href="#"
            radius="sm"
            className="hidden border border-slate-50/20 bg-slate-50/10 text-base text-slate-50 hover:bg-transparent sm:flex"
          >
            Contato
          </Button>
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
              href="#"
              size="lg"
            >
              {item}
            </Link>
          </NavbarMenuItem>
        ))}
      </NavbarMenu>
    </Navbar>
  );
}

export default Menu;
