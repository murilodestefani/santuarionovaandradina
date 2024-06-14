import { LiturgiaProps } from "@/interfaces";
import { Accordion, AccordionItem } from "@nextui-org/react";
import { Bookmark } from "@phosphor-icons/react";
import { useEffect, useState } from "react";

export function Liturgia() {
  const [liturgia, setLiturgia] = useState<LiturgiaProps | null>();

  useEffect(() => {
    const fetchLiturgia = async () => {
      try {
        const response = await fetch("https://liturgiadiaria.site/");

        if (!response.ok) {
          throw new Error(`Erro ao buscar a liturgia: ${response.status}`);
        }

        const data: LiturgiaProps = await response.json();
        setLiturgia(data);
      } catch (error) {
        console.error(error);
      }
    };

    fetchLiturgia();
  }, []);

  const getCorBookmark = (cor: string | undefined) => {
    console.log(cor);

    if (!cor) return null;

    let bookmarkComponent = null;

    if (cor === "Branca") {
      bookmarkComponent = <Bookmark className="text-white" weight="fill" />;
    } else if (cor === "Vermelho") {
      bookmarkComponent = <Bookmark className="text-red-600" weight="fill" />;
    } else if (cor === "Verde") {
      bookmarkComponent = <Bookmark className="text-green-600" weight="fill" />;
    } else if (cor === "Roxo") {
      bookmarkComponent = <Bookmark className="text-purple-600" weight="fill" />;
    } else if (cor === "Rosa") {
      bookmarkComponent = <Bookmark className="text-pink-600" weight="fill" />;
    } else if (cor === "Dourado") {
      bookmarkComponent = <Bookmark className="text-amber-600" weight="fill" />;
    } else if (cor === "Azul") {
      bookmarkComponent = <Bookmark className="text-blue-600" weight="fill" />;
    } else {
      bookmarkComponent = <Bookmark weight="fill" />;
    }

    return bookmarkComponent;
  };

  return (
    <section className="-mt-16 flex min-h-svh w-full items-center justify-center">
      <div className="container mt-16 flex flex-col gap-4 p-4">
        <div className="flex flex-col items-center justify-center gap-2">
          <h3 className="flex items-center justify-center text-2xl font-extrabold text-primary md:text-3xl lg:text-4xl">
            {getCorBookmark(liturgia?.cor)} Cor Litúrgica: {liturgia?.cor}
          </h3>
          <h2 className="font-medium text-primary-600">{liturgia?.liturgia}</h2>
        </div>

        <Accordion selectionMode="multiple">
          <AccordionItem
            key="1"
            aria-label="Primeira Leitura"
            title="Primeira Leitura"
          >
            <article className="flex flex-col gap-2">
              <p>Primeira Leitura ({liturgia?.primeiraLeitura.referencia})</p>
              <b>{liturgia?.primeiraLeitura.titulo}</b>
              <p className="text-justify">{liturgia?.primeiraLeitura.texto}</p>
              <p>- Palavra do Senhor.</p>
              <b>- Graças a Deus.</b>
            </article>
          </AccordionItem>
          {liturgia?.segundaLeitura?.titulo && (
            <AccordionItem
              key="2"
              aria-label="Segunda Leitura"
              title="Segunda Leitura"
            >
              <article className="flex flex-col gap-2">
                <p>Segunda Leitura ({liturgia.segundaLeitura.referencia})</p>
                <b>{liturgia.segundaLeitura.titulo}</b>
                <p className="text-justify">{liturgia.segundaLeitura.texto}</p>
                <p>- Palavra do Senhor.</p>
                <b>- Graças a Deus.</b>
              </article>
            </AccordionItem>
          )}
          <AccordionItem key="3" aria-label="Salmo" title="Salmo">
            <article className="flex flex-col gap-2">
              <p>Responsório ({liturgia?.salmo.referencia})</p>
              <b>{liturgia?.salmo.refrao}</b>
              <p className="text-justify">{liturgia?.salmo.texto}</p>
            </article>
          </AccordionItem>
          <AccordionItem key="4" aria-label="Evangelho" title="Evangelho">
            <article className="flex flex-col gap-2">
              <p>Evangelho ({liturgia?.evangelho.referencia})</p>
              <b>{liturgia?.evangelho.titulo}</b>
              <p className="text-justify">{liturgia?.evangelho.texto}</p>
              <p>- Palavra da Salvação.</p>
              <b>- Glória a vós, Senhor.</b>
            </article>
          </AccordionItem>
        </Accordion>
      </div>
    </section>
  );
}
