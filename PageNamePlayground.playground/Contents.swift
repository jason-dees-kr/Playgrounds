import PageNamePlayground_Sources
import Foundation

let _ = SDKSettings(appRoot: "khx") // among other settings

// PageName.Prefix
var pageName: PageName = PageName("home") // khx:home
pageName += "coupons" // khx:home:coupons

var p = String(describing: pageName) // "khx:home:coupons"

pageName.pop() // "coupons"

pageName = PageName("health", "activity center") // "khx:home:activity-center"
// could do other string processing
pageName += "steps" // "khx:home:activity-center:steps"

//PageName.Prefix.pop() // Doesn't work luckily
pageName = PageName() // khx
pageName += "step counter" // khx:step-counter

var p2 = String(describing: pageName) // "khx:home:activity-center"

var d = try JSONEncoder().encode(pageName)
print(String(decoding: d, as: UTF8.self))
let startNavigate = StartNavigate(componentName: "home page", destination: nil, itemIndex: 5, pageName: pageName)
d = try JSONEncoder().encode(startNavigate)
print(String(decoding: d, as: UTF8.self))

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
