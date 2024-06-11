import { TitleSectionProps } from "@/interfaces";
import React from "react";

const TitleSection: React.FC<TitleSectionProps> = ({ prefix, title }) => {
  return (
    <header className="flex flex-col gap-4">
      <h3 className="text-center text-xs font-bold uppercase tracking-wider text-penn-red-400 lg:text-sm">
        {prefix}
      </h3>
      <h2 className="text-center text-3xl font-bold text-penn-red-900 lg:text-5xl">
        {title}
      </h2>
    </header>
  );
};

export default TitleSection;
