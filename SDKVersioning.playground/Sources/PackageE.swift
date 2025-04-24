//
//  PackageE.swift
//
//
//  Created by Jason Dees on 2025/4/17.
//

public class PackageE {
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
        @available(*, deprecated)
        public struct AddToCart_V2_0_20 {
            public let version: String = "v2.0.20"
            public let product: Product
            public let search: Search_V1_6_5
            public init(product: Product, search: Search_V1_6_5) {
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
        @available(*, deprecated)
        public struct ViewProduct_V1_9_0 {
            public let version:String = "v1.9.0"
            public let product: Product
            public let search: Search_V1_6_5
            public init(product: Product, search: Search_V1_6_5) {
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
        @available(*, deprecated)
        public struct Search_V1_6_5 {
            public let version: String = "v1.6.5"
            public init(){}
        }
    }
}
