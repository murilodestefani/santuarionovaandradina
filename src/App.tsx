import { Church } from "@phosphor-icons/react";
import "./App.css";

function App() {
  return (
    <div className="flex h-dvh flex-col items-center justify-center bg-slate-50 p-8">
      <Church size={32} className="text-lion-500" />
      <h1 className="text-penn-red-900 text-center text-xl font-bold">
        Santuário Imaculado Coração de Maria
      </h1>
    </div>
  );
}

export default App;
