import gleam/string.{trim}

pub fn table_of_contents() -> String {
  "
<div
  class=\"hidden xl:sticky xl:top-[4.75rem] xl:-mr-6 xl:block xl:h-[calc(100vh-4.75rem)] xl:flex-none xl:overflow-y-auto xl:py-16 xl:pr-6\"
>
  <nav aria-labelledby=\"toc\" class=\"w-56\">
    <h2 id=\"toc\" class=\"font-display text-sm font-semibold text-white\">
      On this page
    </h2>
    <ol role=\"list\" class=\"mt-4 space-y-3 text-sm\">
      <li>
        <h3><a class=\"text-sky-500 font-medium\" href=\"#\">Waybo</a></h3>
        <ol role=\"list\" class=\"mt-2 space-y-3 pl-5 text-slate-400\">
          <li>
            <a class=\"hover:text-slate-300\" href=\"#\">Installing dependencies</a>
          </li>
          <li>
            <a class=\"hover:text-slate-300\" href=\"#\">Configuring the library</a>
          </li>
        </ol>
      </li>
    </ol>
  </nav>
</div>
"
  |> trim
  ""
}
