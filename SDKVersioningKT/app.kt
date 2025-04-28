import packageg.*
import packageh.*

fun main(){
  println("Package G");
  println("${packageg.AddToCart(packageg.Product(), packageg.Search()).version}")
  println("${packageg.AddToCart.V2(packageg.Product(), packageg.Search.V1()).version}")

  println("Package H");
  println("${packageh.AddToCart.V3(packageh.Product.V1(), packageh.Search.V2()).version}")
  println("${packageh.AddToCart.V2(packageh.Product.V1(), packageh.Search.V1()).version}")
}
