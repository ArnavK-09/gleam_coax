import gleeunit
// import gleeunit/should
import coax
import gleam/option.{None}
// import gleam/io

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn creation_test() {
  // new site 
  coax.init(
    dir: None,
    name: None
  )
  |> coax.build



  // site
  // |> should.equal(coax.CoaxSite(
  //   dir: "docs"
  // ))
}
