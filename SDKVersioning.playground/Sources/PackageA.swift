//
//  PackageA.swift
//
//
//  Created by Jason Dees on 2025/4/17.
//

public class PackageA {
    public static let name: String = "PackageG"
    public class Banner {
        public struct AddToCart {
            public let version: String = "v3.0.0"
            public let product: Product;
            public let search: Search;
            public init(product: Product, search: Search) {
                self.product = product
                self.search = search
            }
        }
        public struct PageView {
            public let version: String = "latest"
            public init(){}
        }
        public struct StartNavigate {
            public let version: String = "latest"
            public init(){}
        }
        public struct SubmitOrder {
            public let version: String = "latest"
            public init(){}
        }
        public struct ViewProduct {
            public let version: String = "v2.0.0"
            public let product: Product
            public let search: Search
            public init(product: Product, search: Search) {
                self.product = product
                self.search = search
            }
        }
        
        public struct Product {
            public let version: String = "latest"
            public init(){}
        }
        public struct Search {
            public let version: String = "v2.0.1"
            public init(){}
        }
    }
    
    public class Banner_V202516 {
        
        @available(*, deprecated)
        public struct AddToCart {
            public let version: String = "v2.0.20"
            public let product: Banner.Product
            public let search: Search
            public init(product: Banner.Product, search: Search) {
                self.product = product
                self.search = search
            }
        }
        
        @available(*, deprecated)
        public struct ViewProduct {
            public let version:String = "v1.9.0"
            public let product: Banner.Product
            public let search: Search
            public init(product: Banner.Product, search: Search) {
                self.product = product
                self.search = search
            }
        }
        @available(*, deprecated)
        public struct Search {
            public let version: String = "v1.6.5"
            public init(){}
        }
        
        
    }
}
