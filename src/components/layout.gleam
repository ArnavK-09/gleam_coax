import gleam/string.{replace, trim}
import components/navbar.{coax_navbar}
import components/styles.{coax_styles}
import components/sidebar.{sidebar}
import components/toc.{table_of_contents}
import components/footer.{coax_footer}
import components/docs/header.{doc_header}

import types.{type CoaxSite}

pub fn coax_layout(site: CoaxSite) -> String {
"
<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>{{title}}</title>
    <script src=\"//cdn.tailwindcss.com\"></script>
    <style>
    {{styles}}
    </style>
</head>
<body class=\"min-h-screen overflow-x-hidden\">
    <header>
        {{navbar}}
    </header>
    <div class=\"h-screen  relative mx-auto flex w-full px-2 max-w-8xl flex-auto justify-center sm:px-2 lg:px-8 xl:px-12\">
        {{index}}
    <main class=\"min-w-0 max-w-2xl flex-auto px-4 py-12 lg:max-w-none lg:pl-8 lg:pr-0 xl:px-16\">
        {{doc_header}}
        {{children}}
    </main>
    <aside> 
        {{toc}}
    </aside>
    </div>
    <footer>
        {{footer}}
    </footer>
</body>
</html>
"
|> replace("{{navbar}}", coax_navbar())
|> replace("{{index}}", sidebar())
|> replace("{{doc_header}}", doc_header())
|> replace("{{styles}}", coax_styles())
|> replace("{{toc}}", table_of_contents())
|> replace("{{footer}}", coax_footer())
|> replace("{{title}}", site.title)
|> trim
}
