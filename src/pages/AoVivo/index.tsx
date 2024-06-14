export function AoVivo() {
  return (
    <section className="flex min-h-svh -mt-16 w-full items-center justify-center">
      <div className="container mt-16 flex items-center justify-center p-4">
        <iframe
          className="aspect-video w-full lg:w-3/4"
          src="https://www.youtube.com/embed/zwLgUZ5cQaE"
          title="São Bento | Documentário"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; web-share"
        ></iframe>
      </div>
    </section>
  );
}
