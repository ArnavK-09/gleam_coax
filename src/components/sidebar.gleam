import gleam/string.{trim}

pub fn sidebar() -> String {
  "
<aside class=\"sticky basis-1/2 -ml-0.5 h-[calc(100vh-4.75rem)] w-64 overflow-y-auto overflow-x-hidden py-16 pl-0.5 xl:w-72 hidden lg:block lg:relative text-base\">
  <ul role=\"list\" class=\"space-y-9\">
    <li>
      <h2 class=\"font-display font-medium text-white\">Introduction</h2>
      <ul
        role=\"list\"
        class=\"mt-2 space-y-2 border-l-2 lg:mt-4 lg:space-y-4 border-slate-800\"
      >
        <li class=\"relative\">
          <a
            class=\"block w-full pl-3.5 before:pointer-events-none before:absolute before:-left-1 before:top-1/2 before:h-1.5 before:w-1.5 before:-translate-y-1/2 before:rounded-full font-semibold text-sky-500 before:bg-sky-500\"
            href=\"/\"
            >Getting started</a
          >
        </li>
        <li class=\"relative\">
          <a
            class=\"block w-full pl-3.5 before:pointer-events-none before:absolute before:-left-1 before:top-1/2 before:h-1.5 before:w-1.5 before:-translate-y-1/2 before:rounded-full before:hidden hover:before:block text-slate-400 before:bg-slate-700 hover:text-slate-300\"
            href=\"/docs/installation\"
            >Installation</a
          >
        </li>
      </ul>
    </li>
  </ul>
</aside>
"
  |> trim
}
