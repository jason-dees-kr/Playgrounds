import UIKit
//typealias PageName =  [PageNamePart]

let sdkSettings: String = "khx"

enum PageNamePart {
    case prefix
    case section(String)
}

extension PageNamePart {
    var value: String {
        switch self{
        case .prefix:
            return sdkSettings
        case let .section(v):
            return v
        }
    }
}

struct PageName {
    private var _parts:[PageNamePart] = []
    
    var parts:[PageNamePart] {
        _parts
    }
    
    public init(_ pageName: String) {
        _parts.append(.section(pageName.lowercased()))
    }
    
    public init(_ pageName: PageName){
        _parts = pageName.parts
    }
    
    public init() {
        _parts.append(.prefix)
    }
    
    public mutating func append(_ part: PageNamePart) {
        _parts.append(part)
    }
    
    public mutating func append(contentsOf: [PageNamePart]) {
        _parts.append(contentsOf: contentsOf)
    }
    
    public mutating func append(_ contentsOf: PageName) {
        append(contentsOf: contentsOf.parts)
    }
    
    public mutating func pop() -> String? {
        _parts.popLast()?.value
    }
}

extension PageName:CustomStringConvertible {
    var description: String {
        self.parts.map { $0.value }.joined(separator: ":")
    }
}

extension PageName {
    
    static var Prefix: PageName {
        PageName()
    }
    
    static func +=(lhs: inout PageName, rhs: PageName) -> PageName {
        lhs.append(rhs)
        return lhs
    }
    
    static func +=(lhs: inout PageName, rhs: String) -> PageName {
        lhs.append(.section(rhs.lowercased()))
        return lhs
    }
    
    static func +=(lhs: inout PageName, rhs: PageNamePart) -> PageName {
        lhs.append(rhs)
        return lhs
    }
    
    static func +(lhs: PageName, rhs: PageName) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(rhs)
        return lhs
    }
    
    static func +(lhs: PageName, rhs: String) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(.section(rhs.lowercased()))
        return lhs
    }
    
    static func +(lhs: PageName, rhs: PageNamePart) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(rhs)
        return lhs
    }
}

var pageName:PageName = .Prefix + "home" // khx:home
pageName += .section("coupons") // khx:home:coupons

var p = String(describing: pageName) // "khx:home:coupons"

pageName.pop() // "coupons"

//PageName.Prefix.pop() // Doesn't work luckily

var p2 = String(describing: pageName) // "khx:home"

PageName.Prefix // khx

//Sample app use
let first = FirstViewController()
first.pageName
let fakeController = FakeViewController()
first.present(fakeController, animated: false)
fakeController.pageName

// Can I add page names based on the view stack?

class AnalyticsViewController { // : UIViewController {
    var pageName: PageName {
        get{
            let selfType = type(of: self)
            return PageName.Prefix + String(describing: selfType) // is this a good default?
        }
        set(newPageName) {
            
        }
    }
    
    func present(_ viewControllerToPresent: AnalyticsViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        viewControllerToPresent.pageName = self.pageName + viewControllerToPresent.pageName
        viewControllerToPresent.pageName
    }
}

class FirstViewController: AnalyticsViewController {
    var _pageName: PageName = PageName.Prefix + PageName("First")
    override var pageName: PageName {
        get {
            return _pageName
        }
        set(newPageName) {
        }
    }
}


class FakeViewController: AnalyticsViewController {
    var _pageName: PageName = PageName("Fake")
    override var pageName: PageName {
        get {
            return _pageName
        }
        set(newPageName) {
            _pageName = newPageName
        }
    }
}
