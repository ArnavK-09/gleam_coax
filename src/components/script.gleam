import gleam/string.{trim}

pub fn coax_scripts() -> String {
  "
// highlight init
hljs.highlightAll();
"
  |> trim
}
