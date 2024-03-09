import axios from "axios";
import { useEffect, useState } from "react";

interface Post {
  id: number;
  attributes: {
    cover: {
      data: {
        attributes: {
          alternativeText: string;
          formats: {
            large: {
              url: string;
            };
          };
        };
      };
    };
    title: string;
    content: string;
    date: string;
  };
}

export function Teste() {
  const apiUrl = "http://localhost:1337";
  const [posts, setPosts] = useState<Post[]>([]);

  useEffect(() => {
    axios
      .get(`${apiUrl}/api/posts?populate=*`)
      .then(({ data }) => setPosts(data.data))
      .catch((error) => console.error("Erro ao carregar posts:", error));
  }, []);

  return (
    <div className="container flex h-svh w-svw flex-col items-center justify-center">
      {posts.map(({ id, attributes }) => (
        <li key={id}>
          {id}
          <img
            key={id}
            src={`${apiUrl}${attributes.cover.data.attributes.formats.large.url}`}
            alt={`${apiUrl}${attributes.cover.data.attributes.alternativeText}`}
          />
          <div>{attributes.title}</div>
          <div>{attributes.content}</div>
          <div>{attributes.date}</div>
        </li>
      ))}
    </div>
  );
}
