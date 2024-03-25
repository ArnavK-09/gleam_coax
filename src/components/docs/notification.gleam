import gleam/string.{trim}

pub fn content_notif() -> String {

"
<div class=\"my-8 flex rounded-3xl bg-slate-800 p-6 ring-1 ring-slate-800/10\">
  ICON
  <div class=\"ml-4 flex-auto\">
    <p class=\"font-display m-0 text-xl font-semibold text-sky-400\">
      You should know!
    </p>
    <div class=\"mt-2.5 text-slate-300\">
      <p>This is what a disclaimer message looks like</p>
    </div>
  </div>
</div>
"
|> trim

}