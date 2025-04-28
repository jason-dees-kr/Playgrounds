package packageh

// I would like to make this a data class but also i don't want to add a constructor parameter
class AddToCart{

  data class V3(val product:Product.V1, val search:Search.V2) {
    val version = "v3.0.0"
  }

  data class V2(val product:Product.V1, val search:Search.V1) {
    val version = "v2.0.20"
  }
}

class Product() {
  class V1 {
    val version = "v1.2.3"
  }
}

class Search() {

  class V2() {
    val version = "v2.0.1"
  }

  class V1() {
    val version = "v1.6.5"
  }
}

