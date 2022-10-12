import Foundation


let sdkSettings: String = "khx"// We could make this part of SDK settings

public enum PageNamePart {
    case prefix
    case section(String)
}

// This would live in our generic SDK library and pull from settings for the .prefix value
extension PageNamePart {
    var value: String {
        switch self{
        case .prefix:
            return sdkSettings
        case let .section(v):
            var v = v
            v.replace(" ", with: "-")
            return v
        }
    }
}

extension PageNamePart: Equatable {
    
}

public struct PageName {
    private var _parts:[PageNamePart] = []
    
    var parts:[PageNamePart] {
        _parts
    }
    
    public init(_ pageNames: String...) {
        _parts.append(.prefix)
        for pageName in pageNames {
            _parts.append(.section(pageName))
        }
    }
    
    public init(_ pageName: String) {
        _parts.append(.prefix)
        _parts.append(.section(pageName.lowercased()))
    }
    
    public init(_ pageName: PageName){
        _parts.append(.prefix)
        _parts = pageName.parts
    }
    
    public init() {
        // I kinda want to do this for each new page name BUT i don't want to do it when adding page names together
        _parts.append(.prefix)
    }
    
    public mutating func append(_ part: PageNamePart) {
        _parts.append(part)
    }
    
    public mutating func append(contentsOf: [PageNamePart]) {
        _parts.append(contentsOf: contentsOf)
    }
    
    public mutating func append(_ contentsOf: PageName) {
        append(contentsOf: contentsOf.parts.filter { $0 != .prefix})
    }
    
    public mutating func pop() -> String? {
        _parts.popLast()?.value
    }
}

extension PageName:CustomStringConvertible {
    public var description: String {
        self.parts.map { $0.value }.joined(separator: ":")
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
        lhs.append(.section(rhs.lowercased()))
        return lhs
    }
    
    public static func +=(lhs: inout PageName, rhs: PageNamePart) -> PageName {
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
        lhs.append(.section(rhs.lowercased()))
        return lhs
    }
    
    public static func +(lhs: PageName, rhs: PageNamePart) -> PageName {
        var lhs = PageName(lhs)
        lhs.append(rhs)
        return lhs
    }
}

