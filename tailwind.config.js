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
    container: {
      center: true,
    },
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
        shark: {
          50: "#f4f5f7",
          100: "#e4e8e9",
          200: "#ccd2d5",
          300: "#a8b3b8",
          400: "#7d8b93",
          500: "#627078",
          600: "#545e66",
          700: "#485056",
          800: "#40464a",
          900: "#383c41",
          950: "#212427",
        },
      },
      aspectRatio: {
        "2/3": "2 / 3",
        "3/2": "3 / 2",
      },
    },
  },
  darkMode: "class",
  plugins: [
    nextui({
      prefix: "nextui", // prefix for themes variables
      addCommonColors: false, // override common colors (e.g. "blue", "green", "pink").
      defaultTheme: "light", // default theme from the themes object
      defaultExtendTheme: "light", // default theme to extend on custom themes
      layout: {}, // common layout tokens (applied to all themes)
      themes: {
        light: {
          layout: {}, // light theme layout tokens
          colors: {
            primary: {
              DEFAULT: "#9f0000",
              foreground: "#fafafa",
            },
            focus: "#9f0000",
          }, // light theme colors
        },
        dark: {
          layout: {}, // dark theme layout tokens
          colors: {}, // dark theme colors
        },
        // ... custom themes
      },
    }),
  ],
};
