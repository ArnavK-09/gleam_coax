import gleam/string.{trim}

pub fn doc_header() -> String {
  "
<div class=\"min-w-0 max-w-2xl flex-auto px-4 pb-8 lg:max-w-none lg:pl-4\">
    <header class=\"space-y-1 \">
      <p class=\"font-display text-sm font-medium text-sky-500\">Introduction</p>
      <h1 class=\"font-display text-3xl tracking-tight text-white\">Getting started</h1>
    </header>
</div>
"
  |> trim
}
