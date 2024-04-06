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

main h1, h2 {
margin-top: 2rem;
font-weight: 700; 
letter-spacing: 0.025em; 
text-decoration: underline; 
text-underline-offset: 4px; 
margin-bottom: 2rem; 
opacity: 1;
filter: brightness(1.2);
}

main h1 {
  font-size: 2.25rem;
  line-height: 2.5rem; 
}

main h2 {
  font-size: 1.875rem;
line-height: 2.25rem; }
main h3 {
  font-size: 1.5rem;
line-height: 2rem; 
}
main h4 {font-size: 1.25rem;
line-height: 1.75rem; 
}
main h5 {font-size: 1.125rem;
line-height: 1.75rem; }

main h3,h4,h5,h6 {
  margin-top: 0.75rem;
margin-bottom: 0.75rem; 
font-weight: 700; 
filter: brightness(1.2);
letter-spacing: 0.025em; 
text-decoration: underline; 
opacity: 0.98;
text-underline-offset: 4px; 
}

main code {
  margin-top: 1rem;
margin-bottom: 1rem; 
box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); 
  border-radius: 0.75rem; 
  padding-left: 0.75rem;
padding-right: 0.75rem; 
font-weight: 500; 
contrast: contrast(1.5);
}

main blockquote {
  padding: 1rem; 
margin-top: 1rem;
margin-bottom: 1rem; 
background-color: #1e293b;
border-color: #334155;
border-inline-start-width: 4px
}

main ul {
  list-style-type: disc;
  list-style-position: inside;
  margin-top: 0.9rem;
  margin-bottom: 0.9rem;
}

main ol {
  	list-style-type: decimal;
    list-style-position: inside;
    margin-top: 0.9rem; 
    margin-bottom: 0.9rem; 
}

main img {
  display: block; 
margin: 1.5rem auto;
height: fit-content;
max-height: 40vh;
width:auto;
border-radius: 0.5rem; 
box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); 
}

"
  |> trim
}
