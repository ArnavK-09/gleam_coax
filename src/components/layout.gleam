import gleam/string.{replace, trim}
import components/navbar.{coax_navbar}
import types.{type CoaxSite}

pub fn coax_layout(site: CoaxSite) -> String {
"
<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>{{title}}</title>
</head>
<body>
    <header>
        {{navbar}}
    </header>
    <aside>
        {{toc}}
    </aside>
    <main>
        {{children}}
    </main>
    <footer>
        {{footer}}
    </footer>
</body>
</html>
"
|> replace("{{navbar}}", coax_navbar())
|> replace("{{title}}", site.title)
|> trim
}
