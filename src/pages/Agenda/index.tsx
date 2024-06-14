export function Agenda() {
  return (
    <section className="flex min-h-svh w-full items-center justify-center">
      <div className="container flex items-center justify-center p-4">
        <iframe
          className="aspect-square w-full lg:w-3/4"
          src="https://calendar.google.com/calendar/embed?src=80be6c62aeaef8a58a65186bcaf18ad702347266bcd77fa8667ef720b605dca8%40group.calendar.google.com&ctz=America%2FManaus"
          
        ></iframe>
      </div>
    </section>
  );
}
