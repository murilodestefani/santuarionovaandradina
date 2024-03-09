import { Card, Image } from "@nextui-org/react";
import React from "react";
import { Link } from "react-router-dom";

interface CardNoticiaProps {
  title: string;
  content: string;
  category: string;
  imgUrl: string;
  link: string;
}

const CardNoticia: React.FC<CardNoticiaProps> = ({
  title,
  content,
  category,
  imgUrl,
  link,
}) => {
  return (
    <Link to={link} className="relative flex max-w-80 flex-col gap-1">
      <Card isPressable isBlurred className="aspect-square">
        <Image
          isZoomed
          removeWrapper
          className="z-0 h-full w-full object-cover"
          width="100%"
          src={imgUrl}
        />
      </Card>
      <span className="absolute right-4 top-4 rounded-md bg-black/25 px-3 py-1 text-xs font-bold uppercase text-neutral-50 shadow-md">
        {category}
      </span>
      <h4 className="mt-1 line-clamp-2 text-lg font-bold text-shark-950 md:text-base lg:text-lg">
        {title}
      </h4>
      <p className="line-clamp-5 text-justify text-xs text-shark-700">
        {content}
      </p>
    </Link>
  );
};

export default CardNoticia;
