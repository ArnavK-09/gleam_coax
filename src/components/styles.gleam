import gleam/string.{trim}

pub fn coax_styles() {
  "
html,
body {
  background-color: #0f172a;
  color: #94a3b8;
}
::-webkit-scrollbar {
  display: none;
}

hr {
  margin-top: 0.5rem !important;
  margin-bottom: 0.5rem !important;
  margin-left: 1rem;
  margin-right: 1rem;
  border-style: none;
  padding-top: 0.5px;
  padding-bottom: 0.5px;
  background-color: #334155;
}

main {
  line-height: 1.565;
}

main a {
  color: #38bdf8;
  text-underline-offset: 0.5px;
  font-weight: 550;
  text-decoration: underline;

  &:hover {
    color: #0ea5e9;
  }
}
"
  |> trim
}
