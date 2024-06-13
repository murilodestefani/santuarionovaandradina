import { CardGroupProps } from "@/interfaces";
import { Card, Image } from "@nextui-org/react";
import React from "react";
import { Link } from "react-router-dom";

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
          className="aspect-3/2 rounded-b-none border-b-4 border-primary"
          removeWrapper
          src={imgUrl}
          alt={imgAlt}
        />
        <div className="flex flex-col items-center gap-1 p-4">
          <h4 className="line-clamp-2 text-center text-lg font-bold text-primary md:text-base lg:text-lg">
            {title}
          </h4>

          <p className="line-clamp-5 text-center text-xs">{description}</p>
        </div>
      </Card>
    </Link>
  );
};

export default CardGroup;
