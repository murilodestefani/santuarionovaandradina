import { Card, Image } from "@nextui-org/react";
import React from "react";
import { Link } from "react-router-dom";

interface CardGroupProps {
  title: string;
  description: string;
  imgUrl: string;
  imgAlt: string;
  link: string;
}

const CardGroup: React.FC<CardGroupProps> = ({
  title,
  description,
  imgUrl,
  imgAlt,
  link,
}) => {
  return (
    <Link to={link} className="max-w-64 rounded-lg">
      <Card className="flex flex-col items-center">
        <Image
          className="aspect-3/2 rounded-b-none border-b-4 border-penn-red-900"
          removeWrapper
          src={imgUrl}
          alt={imgAlt}
        />
        <div className="p flex flex-col items-center gap-1 p-4">
          <h4 className="line-clamp-2 text-lg font-bold text-penn-red-900 md:text-base lg:text-lg">
            {title}
          </h4>
          <p className="line-clamp-5 text-center text-xs text-shark-700">
            {description}
          </p>
        </div>
      </Card>
    </Link>
  );
};

export default CardGroup;
