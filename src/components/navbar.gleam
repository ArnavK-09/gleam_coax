import gleam/string.{trim}

pub fn coax_navbar() -> String {
"
<nav
  class=\"shadow-xl shadow-slate-900  sticky top-0 z-50 flex flex-none flex-wrap items-center justify-between bg-transparent backdrop-blur-md px-4 py-5 sm:px-6 lg:px-8\"
>
  <!-- start -->
  <div class=\"mr-6 flex lg:hidden\">
    <button type=\"button\" class=\"relative\" aria-label=\"navigate\">
      Menu(6)
    </button>
  </div>
  <div class=\"relative flex flex-grow basis-0 items-center\">Logo</div>
  <!-- search bar  -->
  <div class=\"-my-5 mr-6 sm:mr-8 md:mr-0\">
    <button
      type=\"button\"
      class=\"group flex h-6 w-6 items-center justify-center sm:justify-start md:h-auto md:w-80 md:flex-none md:rounded-lg md:py-2.5 md:pl-4 md:pr-3.5 md:text-sm md:ring-1 md:ring-slate-200 lg:w-96 md:bg-slate-800/75 md:ring-inset md:ring-white/5 md:hover:bg-slate-700/40 md:hover:ring-slate-500\"
    >
      🔎<span class=\"sr-only md:not-sr-only md:ml-2\">search docs</span>
    </button>
  </div>
  <!-- end  -->
  <div class=\"relative flex basis-0 justify-end gap-6 sm:gap-8 md:flex-grow\">
    <div class=\"h-6 w-6\">Social</div>
  </div>
</nav>
"
  |> trim
}
