import gleam/string.{trim}

pub fn coax_navbar() -> String {
  "
<nav
  class=\"shadow-xl shadow-slate-900  sticky top-0 z-50 flex flex-none flex-wrap items-center justify-between bg-transparent backdrop-blur-md px-4 py-5 sm:px-6 lg:px-8\"
>
  <!-- start -->
  <div class=\"mr-6 flex lg:hidden\">
    <button type=\"button\" class=\"relative\" aria-label=\"navigate\">
      <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" class=\"w-7 h-10\">
  <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M3.75 9h16.5m-16.5 6.75h16.5\" />
</svg>

    </button>
  </div>
  <div class=\"relative flex flex-grow basis-0 items-center\">
<a href=\"/\" aria-label=\"home\">
    <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" class=\"w-10 h-10\">
  <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25\" />
</svg>
</a>
  </div>
  <!-- search bar  -->
  <div class=\"-my-5 mr-6 sm:mr-8 md:mr-0\">
    <button
      type=\"button\"
      class=\"group flex h-6 w-6 items-center justify-center sm:justify-start md:h-auto md:w-80 md:flex-none md:rounded-lg md:py-2.5 md:pl-4 md:pr-3.5 md:text-sm md:ring-1 md:ring-slate-200 lg:w-96 md:bg-slate-800/75 md:ring-inset md:ring-white/5 md:hover:bg-slate-700/40 md:hover:ring-slate-500\"
    >
      <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"2\" stroke=\"currentColor\" class=\"w-7 h-7\">
  <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z\" />
</svg>
<span class=\"sr-only md:not-sr-only md:ml-2\">Search....</span>
    </button>
  </div>
  <!-- end  -->
  <div class=\"relative flex basis-0 justify-end gap-6 sm:gap-8 md:flex-grow\">
    <div class=\"h-6 w-6\">
    <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"currentColor\" class=\"w-7 h-7\">
  <path stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M6.72 13.829c-.24.03-.48.062-.72.096m.72-.096a42.415 42.415 0 0 1 10.56 0m-10.56 0L6.34 18m10.94-4.171c.24.03.48.062.72.096m-.72-.096L17.66 18m0 0 .229 2.523a1.125 1.125 0 0 1-1.12 1.227H7.231c-.662 0-1.18-.568-1.12-1.227L6.34 18m11.318 0h1.091A2.25 2.25 0 0 0 21 15.75V9.456c0-1.081-.768-2.015-1.837-2.175a48.055 48.055 0 0 0-1.913-.247M6.34 18H5.25A2.25 2.25 0 0 1 3 15.75V9.456c0-1.081.768-2.015 1.837-2.175a48.041 48.041 0 0 1 1.913-.247m10.5 0a48.536 48.536 0 0 0-10.5 0m10.5 0V3.375c0-.621-.504-1.125-1.125-1.125h-8.25c-.621 0-1.125.504-1.125 1.125v3.659M18 10.5h.008v.008H18V10.5Zm-3 0h.008v.008H15V10.5Z\" />
</svg>
</div>
  </div>
</nav>
"
  |> trim
}
