import { CaretUp } from "@phosphor-icons/react";
import React, { useState, useEffect } from "react";

const ButtonBackToTop: React.FC = () => {
  const [isVisible, setIsVisible] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 200) {
        setIsVisible(true);
      } else {
        setIsVisible(false);
      }
    };

    window.addEventListener("scroll", handleScroll);

    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);

  const handleScrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  };

  return (
    <button
      className={`fixed bottom-4 right-4 ${
        isVisible ? "opacity-100" : "opacity-0"
      } sh z-50 rounded-full bg-lion-500 p-4 text-white shadow-md transition-opacity duration-300 ease-in-out focus:outline-none`}
      onClick={handleScrollToTop}
    >
      <CaretUp className="text-xl text-neutral-50" />
    </button>
  );
};

export default ButtonBackToTop;
