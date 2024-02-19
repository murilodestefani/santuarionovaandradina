// tailwind.config.js
const { nextui } = require("@nextui-org/react");

/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
    "./node_modules/@nextui-org/theme/dist/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        "penn-red": {
          50: "#ffeeee",
          100: "#ffdada",
          200: "#ffbbbb",
          300: "#ff8b8b",
          400: "#ff4949",
          500: "#ff1111",
          600: "#ff0000",
          700: "#e70000",
          800: "#be0000",
          900: "#9f0000",
          950: "#560000",
        },
        lion: {
          50: "#f7f6ef",
          100: "#ece8d5",
          200: "#dbd1ad",
          300: "#c6b57e",
          400: "#b59b5a",
          500: "#ac8d4f",
          600: "#8e6e40",
          700: "#735435",
          800: "#614732",
          900: "#543e2f",
          950: "#302018",
        },
      },
    },
  },
  darkMode: "class",
  plugins: [nextui()],
};
