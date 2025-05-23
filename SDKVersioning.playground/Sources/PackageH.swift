//
//  PackageH.swift
//
//
//  Created by Jason Dees on 2025/4/28.
//

public class PackageH: BasePackage {
    
    public class Banner {
        public struct AddToCart_V3 {
            public let version: String = "v3.0.0"
            
            // Strongly name and type the attributes to specific major versions and update this whenever
            // It will require custom serialization to keep consistency with consumers, so Im' not sure we need names AND types to be versioned
            // It's very explicit though
            
            public let product: Product_V1; // Or Product.V1
            public let search: Search_V2;
            public init(product: Product_V1, search: Search_V2) {
                self.product = product
                self.search = search
            }
        }
        
        @available(*, deprecated)
        public struct AddToCart_V2 {
            public let version: String = "v2.0.20"
            public let product: Product_V1
            public let search: Search_V1
            public init(product: Product_V1, search: Search_V1) {
                self.product = product
                self.search = search
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
            public let version: String = "v1.99.99"
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
        
        public struct Product_V1 {
            public let version: String = "V1.2.3"
            public init(){}
        }
        
        public struct Search_V2 {
            public let version: String = "v2.0.1"
            public init(){}
        }
        
        @available(*, deprecated)
        public struct Search_V1 {
            public let version: String = "v1.6.5"
            public init(){}
        }
    }
    
    public class Krogerlytics {
        
        public struct Product {
            @available(*, deprecated)
            public struct V1 {}
            public struct V2 {}
        }
        
        public struct Transaction{
            @available(*, deprecated)
            public struct V1 {
                public let component: Component.V2
            }
            
            @available(*, deprecated)
            public struct V2 {
                public let component: Component.V2
            }
            
            public struct V3 {
                public let component: Component.V3
            }
        }
        
        public struct Component {
            @available(*, deprecated)
            public struct V2 {}
            
            public struct V3 {}
        }
    }
}
