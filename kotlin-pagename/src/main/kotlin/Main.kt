fun main() {
    SDKSettings("khx")
    val pageName = PageName("home", "coupons", "walking")
    pageName.add("steps")
    println(pageName)// khx:home:coupons:walking:steps
    pageName.pop()
    println(pageName)// khx:home:coupons:walking
}