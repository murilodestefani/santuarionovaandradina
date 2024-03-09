import { Card, CardFooter, Image } from "@nextui-org/react";
import { CalendarBlank, BookmarkSimple } from "@phosphor-icons/react";
import React from "react";
import { Link } from "react-router-dom";

interface CardEventoProps {
  title: string;
  date: string;
  category: string;
  imgUrl: string;
  link: string;
}

const CardEvento: React.FC<CardEventoProps> = ({
  title,
  date,
  category,
  imgUrl,
  link,
}) => {
  return (
    <Link to={link}>
      <Card
        isPressable
        isFooterBlurred
        isBlurred
        className="aspect-2/3 max-w-80"
      >
        <Image
          isZoomed
          removeWrapper
          className="z-0 h-full w-full object-cover"
          width="100%"
          src={imgUrl}
        />
        <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
          <div className="flex w-full items-center justify-between">
            <div className="flex items-center justify-center gap-1 text-neutral-50">
              <CalendarBlank className="text-lion-500" weight="fill" />
              <span className="text-tiny">{date}</span>
            </div>
            <div className="flex items-center justify-center gap-1 text-neutral-50">
              <BookmarkSimple className="text-lion-500" weight="fill" />
              <span className="text-tiny">{category}</span>
            </div>
          </div>
          <h4 className="line-clamp-2 text-start font-bold text-neutral-50">
            {title}
          </h4>
        </CardFooter>
      </Card>
    </Link>
  );
};

export default CardEvento;
