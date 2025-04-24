import packageg.AddToCart
import packageg.Product
import packageg.Search

fun main(){
  println("${AddToCart(Product(), Search()).version}")
  println("${AddToCart.V2(Product(), Search.V1()).version}")
}
