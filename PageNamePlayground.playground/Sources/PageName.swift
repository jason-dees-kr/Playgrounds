import Foundation

public struct SDKSettings {
    public let appRoot: String
    public init(appRoot: String){
        self.appRoot = appRoot
        SDKSettings.Shared = self
    }
    
    public static private(set) var  Shared: SDKSettings?
}

public struct PageName {
    private var _parts: [String] = []
    
    var parts:[String] {
        _parts
    }
    private let _prefix: String
    
    public init() {
        // I kinda want to do this for each new page name BUT i don't want to do it when adding page names together
        _prefix = SDKSettings.Shared?.appRoot ?? "Not Set"
        _parts.append(_prefix)
    }
    
    public init(_ pageNames: String...) {
        _prefix = SDKSettings.Shared?.appRoot ?? "Not Set"
        _parts.append(_prefix)
        for pageName in pageNames {
            _parts.append(pageName)
        }
    }
    
    public init(_ pageName: PageName) {
        _prefix = SDKSettings.Shared?.appRoot ?? "Not Set"
        _parts.append(_prefix)
        append(pageName)
    }
    
    public mutating func append(_ part: String) {
        _parts.append(part)
    }
    
    public mutating func append(contentsOf: [String]) {
        _parts.append(contentsOf: contentsOf)
    }
    
    public mutating func append(_ contentsOf: PageName) {
        append(contentsOf: contentsOf.parts.filter { $0 != _prefix})
    }
    
    public mutating func pop() -> String? {
        _parts.popLast()
    }
}

extension PageName: CustomStringConvertible {
    public var description: String {
        self.parts.joined(separator: ":")
    }
}

extension PageName {
    
    public static var Prefix: PageName {
        PageName()
    }
    
    public static func +=(lhs: inout PageName, rhs: PageName) -> PageName {
        lhs.append(rhs)
        return lhs
    }
    
    public static func +=(lhs: inout PageName, rhs: String) -> PageName {
        lhs.append(rhs)
        return lhs
    }
    
    public static func +(lhs: PageName, rhs: PageName) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(rhs)
        return lhs
    }
    
    public static func +(lhs: PageName, rhs: String) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(rhs)
        return lhs
    }
}

