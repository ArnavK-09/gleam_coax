import gleam/string.{trim}

pub fn coax_navbar() -> String {
"
<nav>
    <div>
        {{title}}
    </div>
    <div>

    </div>
</nav>
"
  |> trim
}
