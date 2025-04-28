//
//  PackageH.swift
//
//
//  Created by Jason Dees on 2025/4/28.
//

public class PackageH: BasePackage {
    
    public class Banner {
        public struct AddToCart_V3: Codable {
            enum CodingKeys: String, CodingKey {
                case version
                case product_v1 = "product"
                case search_v2 = "search"
            }
            public let version: String = "v3.0.0"
            
            // Strongly name and type the attributes to specific major versions and update this whenever
            // It will require custom serialization to keep consistency with consumers, so Im' not sure we need names AND types to be versioned
            // It's very explicit though
            
            public let product_v1: Product_V1;
            public let search_v2: Search_V2;
            public init(product_v1: Product_V1, search_v2: Search_V2) {
                self.product_v1 = product_v1
                self.search_v2 = search_v2
            }
        }
        
        @available(*, deprecated)
        public struct AddToCart_V2 {
            public let version: String = "v2.0.20"
            public let product_v1: Product_V1
            public let search_v1: Search_V1
            public init(product_v1: Product_V1, search_v1: Search_V1) {
                self.product_v1 = product_v1
                self.search_v1 = search_v1
            }
        }
        public struct PageView_V5 {
            public let version: String = "v5.0.99"
            public init(){}
        }
        public struct StartNavigate_V3 {
            public let version: String = "v3.6.12"
            public init(){}
        }
        public struct SubmitOrder_V1 {
            public let version: String = "v1"
            public init(){}
        }
        public struct ViewProduct_V2 {
            public let version: String = "v2.0.0"
            public let product: Product_V1
            public let search: Search_V2
            public init(product: Product_V1, search: Search_V2) {
                self.product = product
                self.search = search
            }
        }
        
        @available(*, deprecated)
        public struct ViewProduct_V1 {
            public let version:String = "v1.9.0"
            public let product: Product_V1
            public let search: Search_V1
            public init(product: Product_V1, search: Search_V1) {
                self.product = product
                self.search = search
            }
        }
        
        public struct Product_V1: Codable {
            public let version: String = "V1.2.3"
            enum CodingKeys: String, CodingKey {
                case version
            }
            public init(){}
        }
        public struct Search_V2: Codable {
            public let version: String = "v2.0.1"
            enum CodingKeys: String, CodingKey {
                case version
            }
            public init(){}
        }
        
        @available(*, deprecated)
        public struct Search_V1 {
            public let version: String = "v1.6.5"
            public init(){}
        }
        
    }
}
