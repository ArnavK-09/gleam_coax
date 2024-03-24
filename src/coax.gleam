//// Coax - the site builder

import gleam/io
import gleam/list
import gleam/string
import gleam/option.{type Option, lazy_unwrap}
import gleam/result
import gleam/dict
import simplifile
import kirala/markdown/html_renderer
import components/layout.{coax_layout}
import types.{type CoaxSite}

// Constants 
pub const output_dir: String = "dist"

/// Call to initialize your docs site
pub fn init(dir dir: Option(String), name name: Option(String)) -> CoaxSite {
  types.CoaxSite(
    dir: lazy_unwrap(dir, fn() { "docs" }), 
    title: lazy_unwrap(name, fn() { "Coax Site" }), 
  )
}

/// Using internal components with child props
@deprecated("Under works")
pub fn use_component(
  component: fn() -> String,
  props: dict.Dict(String, String),
) -> String {
  let component_template = component()
  let user_props = dict.keys(props)
  let render = dict.from_list([#("html", component_template)])
  
  list.each(user_props, fn(prop){
    let assert Ok(value) = dict.get(props, prop)
    let assert Ok(tmpl) = dict.get(render, "html")
    let template = string.replace(tmpl, "{{" <> prop <> "}}", value)
    dict.insert(render, "html", template)
  })  
  
  let assert Ok(final_render) = dict.get(render, "html")
  final_render
}

/// Coverts markdown content to html
fn convert_md_to_html(content: String) -> String {
  html_renderer.convert(content)
}

/// Processes markdown file to meet coax docs theme
fn process_content(content: String, site: CoaxSite) {
  let inner_html = convert_md_to_html(content)

  coax_layout(site)
  |> string.replace("{{children}}", inner_html)
}

/// Processes Markdown file and publish output to output_dir
fn process_route(route: String, site: CoaxSite) {
  // Meta Vars 
  io.println("Route Loading:- " <> route)
  let assert Ok(content) = simplifile.read(from: route)
  let file_route = string.replace(route, site.dir, output_dir)
  let output_file_route = string.replace(file_route, ".md", ".html")
  let assert Ok(source_file) = list.last(string.split(route, "/"))
  let folder_name = string.replace(file_route, source_file, "")
  // io.println(file_route <> "  |  " <> source_file <> "  |  " <> folder_name <> "  |  " <> "\n")

  // Creating Required Dirs
  let _ = simplifile.create_directory_all(folder_name)

  // Writing Data 
  let _ = simplifile.write(process_content(content, site), to: output_file_route)
}

/// Clears previous out_dir (if exists)
pub fn clear_build_dir() {
  case simplifile.verify_is_directory(output_dir) {
    Ok(True) -> {
      let assert Ok(_) = simplifile.delete_all([output_dir])
      Ok(True)
    }
    _ -> Ok(True)
  }
}

/// Loads directory wherever documentation markdown files exists
fn load_docs_dir(dir: String, site: CoaxSite) {
  io.println("Loading Directory:- " <> dir)
  use content <- result.try({
    let data = simplifile.read_directory(dir)

    case data {
      Error(_) -> {
        io.println_error("ERROR: Directory Not Found ;/")
        data
      }
      Ok(_) -> {
        list.each(result.unwrap(data, []), fn(x) {
          case simplifile.verify_is_file(dir <> "/" <> x) {
            Ok(True) -> {
              let route: String = dir <> "/" <> x
              let _ = process_route(route, site)
              pass()
            }
            _ -> {
              pass()
            }
          }
          case simplifile.verify_is_directory(dir <> "/" <> x) {
            Ok(True) -> {
              load_docs_dir(dir <> "/" <> x, site)
              pass()
            }
            _ -> {
              pass()
            }
          }
        })
        data
      }
    }
  })
  Ok(content)
}

/// Loads all data for Coax website
fn load_data(dir: String, site: CoaxSite) {
  use content <- result.try(load_docs_dir(dir, site))
  Ok(content)
}

/// Convert your entire markdown documentation site into static html files
pub fn build(site: CoaxSite) {
  case simplifile.verify_is_directory(site.dir) {
    Ok(True) -> {
      io.println("Found directory, loading content")
    }
    _ -> {
      io.println_error("Unable to find directory for docs content")
      panic
    }
  }

  let tasks = {
    use _ <- result.try(clear_build_dir())
    use _ <- result.try(load_data(site.dir, site))
    Ok(Nil)
  }
  case tasks {
    Ok(_) -> {
      io.debug(site)
      io.println("Site compiled to ./build 🎉")
    }
    Error(_) -> {
      Nil
    }
  }
}

/// Pass
fn pass() {
  let _ = ""
}
