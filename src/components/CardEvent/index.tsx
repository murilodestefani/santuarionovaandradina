import { CardEventProps } from "@/interfaces";
import { Card, CardFooter, Image } from "@nextui-org/react";
import { BookmarkSimple, CalendarBlank } from "@phosphor-icons/react";
import dayjs from "dayjs";
import "dayjs/locale/pt-br";
import React from "react";
import { Link } from "react-router-dom";

const CardEvent: React.FC<CardEventProps> = ({
  title,
  date,
  category,
  imgUrl,
  imgAlt,
  link,
}) => {
  dayjs.locale("pt-br");
  const formattedDate = dayjs(date).format("DD MMM, YYYY");

  return (
    <Link to={link}>
      <Card isPressable isFooterBlurred isBlurred className="aspect-2/3 w-80">
        <Image
          isZoomed
          removeWrapper
          className="z-0 h-full w-full object-cover"
          width="100%"
          src={imgUrl}
          alt={imgAlt}
        />
        <CardFooter className="absolute bottom-0 z-10 flex flex-col gap-1 border-t-1 border-zinc-100/50 bg-black/50">
          <div className="flex w-full items-center justify-between">
            <div className="flex items-center justify-center gap-1 text-neutral-50">
              <CalendarBlank className="text-lion-500" weight="fill" />
              <span className="text-tiny capitalize">{formattedDate}</span>
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

export default CardEvent;
