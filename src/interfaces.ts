export interface Photo {
  farm: number;
  id: string;
  isfamily: number;
  isfriend: number;
  isprimary: string;
  ispublic: number;
  secret: string;
  server: string;
  title: string;
}

export interface CardEventProps {
  title: string;
  date: string;
  category: string;
  imgUrl: string;
  imgAlt: string;
  link: string;
}

export interface CardGroupProps {
  title: string;
  description: string;
  imgUrl: string;
  imgAlt: string;
  link: string;
}

export interface CardNewProps {
  title: string;
  content: string;
  category: string;
  imgUrl: string;
  imgAlt: string;
  link: string;
}

export interface EventProps {
  id: number;
  attributes: {
    title: string;
    content: string;
    date: string;
    slug: string;
    album: string;
    cover: {
      data: {
        attributes: {
          alternativeText: string;
          formats: {
            large: {
              url: string;
            };
            small: {
              url: string;
            };
            medium: {
              url: string;
            };
          };
        };
      };
    };
    category: {
      data: {
        attributes: {
          name: string;
        };
      };
    };
  };
}

export interface NewProps {
  id: number;
  attributes: {
    slug: string;
    cover: {
      data: {
        attributes: {
          alternativeText: string;
          formats: {
            large: {
              url: string;
            };
            small: {
              url: string;
            };
            medium: {
              url: string;
            };
          };
        };
      };
    };
    title: string;
    content: string;
    date: string;
    category: {
      data: {
        attributes: {
          name: string;
        };
      };
    };
  };
}

export interface TitleSectionProps {
  prefix?: string;
  title: string;
}

export interface VerseProps {
  book: {
    name: string;
  };
  chapter: number;
  number: number;
  text: string;
}

export interface LiturgiaProps {
  cor: string;
  data: string;
  liturgia: string;
  primeiraLeitura: {
    referencia: string;
    titulo: string;
    texto: string;
  };
  segundaLeitura?: {
    referencia: string;
    titulo: string;
    texto: string;
  };
  salmo: {
    referencia: string;
    refrao: string;
    texto: string;
  };
  evangelho: {
    referencia: string;
    titulo: string;
    texto: string;
  };
}

export interface GroupProps {
  id: number;
  attributes: {
    slug: string;
    cover: {
      data: {
        attributes: {
          alternativeText: string;
          formats: {
            small: {
              url: string;
            };
          };
        };
      };
    };
    title: string;
    description: string;
  };
}
