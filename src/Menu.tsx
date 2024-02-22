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
          <img
            className="h-9"
            src="/assets/img/logo.png"
            alt="Logo do Santuário Nova Andradina"
          />
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
            <DropdownItem key="Página 1">
              <Link color="foreground" href="#">
                Página 1
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 2">
              <Link color="foreground" href="#">
                Página 2
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 3">
              <Link color="foreground" href="#">
                Página 3
              </Link>
            </DropdownItem>
          </DropdownMenu>
        </Dropdown>
        <NavbarItem>
          <Link className="text-slate-50" href="#">
            Comunidade
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
                Galeria
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Página 1">
              <Link color="foreground" href="#">
                Página 1
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 2">
              <Link color="foreground" href="#">
                Página 2
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 3">
              <Link color="foreground" href="#">
                Página 3
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
                Eventos
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Página 1">
              <Link color="foreground" href="#">
                Página 1
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 2">
              <Link color="foreground" href="#">
                Página 2
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 3">
              <Link color="foreground" href="#">
                Página 3
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
                Devocional
              </Button>
            </DropdownTrigger>
          </NavbarItem>
          <DropdownMenu>
            <DropdownItem key="Página 1">
              <Link color="foreground" href="#">
                Página 1
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 2">
              <Link color="foreground" href="#">
                Página 2
              </Link>
            </DropdownItem>
            <DropdownItem key="Página 3">
              <Link color="foreground" href="#">
                Página 3
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
