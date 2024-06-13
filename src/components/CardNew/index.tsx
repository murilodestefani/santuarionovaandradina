import { CardNewProps } from "@/interfaces";
import { Card, Image } from "@nextui-org/react";
import React from "react";
import { Link } from "react-router-dom";



const CardNew: React.FC<CardNewProps> = ({
  title,
  content,
  category,
  imgUrl,
  imgAlt,
  link,
}) => {
  return (
    <Link to={link} className="relative flex max-w-80 flex-col gap-1">
      <Card isPressable isBlurred className="aspect-square">
        <Image
          isZoomed
          removeWrapper
          className="z-0 h-full w-full object-cover shadow-inner"
          width="100%"
          src={imgUrl}
          alt={imgAlt}
        />
      </Card>
      <span className="absolute right-4 top-4 rounded-md border-2 border-neutral-50/25 bg-black/25 px-3 py-1 text-xs font-bold uppercase text-neutral-50">
        {category}
      </span>
      <h4 className="mt-1 line-clamp-2 text-lg font-bold md:text-base lg:text-lg">
        {title}
      </h4>
      <p className="line-clamp-5 text-justify text-xs">
        {content}
      </p>
    </Link>
  );
};

export default CardNew;
