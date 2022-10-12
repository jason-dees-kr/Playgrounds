import PageNamePlayground_Sources

let _ = SDKSettings(appRoot: "khx")

// PageName.Prefix 
var pageName: PageName = PageName.Prefix + "home" // khx:home
pageName += PageNamePart.section("coupons") // khx:home:coupons


var p = String(describing: pageName) // "khx:home:coupons"

pageName.pop() // "coupons"

pageName = PageName("health", "activity center")

//PageName.Prefix.pop() // Doesn't work luckily

var p2 = String(describing: pageName) // "khx:home"

PageName.Prefix // khx

//25th century ideas below
// Can I add page names based on the view stack?

//Sample app use
let home = HomeViewController()
home.pageName

let list = home.goToList()
list.pageName

let dept = list.goTo(department: "straws")
dept.pageName + "bought-list"

let prod = dept.viewProducts()
prod.pageName
