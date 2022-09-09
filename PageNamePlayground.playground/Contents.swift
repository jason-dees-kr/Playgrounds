import UIKit
//typealias PageName =  [PageNamePart]

enum PageNamePart {
    case prefix
    case section(String)
}

extension PageNamePart {
    var value: String {
        switch self{
        case .prefix:
            return "app"
        case let .section(v):
            return v
        }
    }
}

class PageName {
    private var _parts:[PageNamePart] = []
    
    var parts:[PageNamePart] {
        _parts
    }
    
    public init() {
        _parts.append(.prefix)
    }
    
    public func append(_ part: PageNamePart) {
        _parts.append(part)
    }
    
    public func append(contentsOf: [PageNamePart]) {
        _parts.append(contentsOf: contentsOf)
    }
    
    public func append(contentsOf: PageName) {
        append(contentsOf: contentsOf.parts)
    }
    
    public func pop() -> PageNamePart? {
        _parts.popLast()
    }
}

extension PageName:CustomStringConvertible {
    var description: String {
        self.parts.map { $0.value }.joined(separator: ":")
    }
}

extension PageName {
    
    static let Prefix: PageName = PageName()
    
    static func +(lhs: PageName, rhs: PageName) -> PageName {
        lhs.append(contentsOf: rhs.parts)
        return lhs
    }
    
    static func +(lhs: PageName, rhs: String) -> PageName {
        lhs.append(.section(rhs))
        return lhs
    }
    
    static func +(lhs: PageName, rhs: PageNamePart) -> PageName {
        lhs.append(rhs)
        return lhs
    }
}

let pageName:PageName = .Prefix + "home" + .section("coupons")

var p = String(describing: pageName)
