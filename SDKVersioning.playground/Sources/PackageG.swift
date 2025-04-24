//
//  Untitled.swift
//  
//
//  Created by Jason Dees on 2025/4/23.
//

public class PackageG: BasePackage {

    public class Banner {
        public struct AddToCart {
            public let version: String = "v3.0.0"
            public let product: Product;
            public let search: Search;
            public init(product: Product, search: Search) {
                self.product = product
                self.search = search
            }
            
            public typealias V3 = AddToCart
            
            @available(*, deprecated)
            public struct V2 {
                public let version: String = "v2.0.20"
                public let product: Banner.Product
                public let search: Search.V1
                public init(product: Banner.Product, search: Search.V1) {
                    self.product = product
                    self.search = search
                }
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
            public typealias V2 = ViewProduct
            
            @available(*, deprecated)
            public struct V1 {
                public let version:String = "v1.9.0"
                public let product: Banner.Product
                public let search: Search.V1
                public init(product: Banner.Product, search: Search.V1) {
                    self.product = product
                    self.search = search
                }
            }
        }
        public struct Product {
            public let version: String = "latest"
            public init(){}
        }
        public struct Search {
            public let version: String = "v2.0.1"
            public init(){}
            
            public typealias V2 = Search
            
            @available(*, deprecated)
            public struct V1 {
                public let version: String = "v1.6.5"
                public init(){}
            }
        }
    }
}
