package packageg

// I would like to make this a data class but also i don't want to add a constructor parameter
data class AddToCart(val product:Product, val search:Search) {

  val version = "v3.0.0"

  data class V2(val product:Product, val search:Search.V1) {
    val version = "v2.0.20"
  }
}

class Product() {
  val version = "latest"
}

class Search() {
  val version = "v2.0.1"
  class V1() {
    val version = "v1.6.5"
  }
}

