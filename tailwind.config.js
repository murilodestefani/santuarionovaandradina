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
            background: "#fafafa",
            foreground: "#11181C",
            primary: {
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
              DEFAULT: "#543e2f",
              foreground: "#f7f6ef",
            },
            focus: "#543e2f",
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
