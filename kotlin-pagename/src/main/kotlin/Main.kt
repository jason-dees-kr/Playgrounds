fun main() {
    SDKSettings("khx")
    val pageName = PageName("home", "coupons", "walking")
    pageName.add("steps")
    println(pageName)// khx:home:coupons:walking:steps
    println("*************")
    pageName.pop()
    println(pageName)// khx:home:coupons:walking
    println("*************")

    val startNavigate = StartNavigate("home walking", pageName, null, 5)
    println(startNavigate.pageName)
    println("*************")
    println(startNavigate.pageNameObj)
    println("*************")
}