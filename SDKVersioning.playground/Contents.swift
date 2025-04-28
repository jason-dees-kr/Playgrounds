import Cocoa

_ = {
    
    let addToCartLatest = PackageA.Banner.AddToCart(product: PackageA.Banner.Product(),
                                                    search: PackageA.Banner.Search())
    let addToCartPrev = PackageA.Banner_V202516.AddToCart(product: PackageA.Banner.Product(),
                                                          search: PackageA.Banner_V202516.Search())
    print("----------------------")
    print("PackageA")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    
    let addToCartLatest = PackageB.Banner_V202517.AddToCart(product: PackageB.Banner_V202516.Product(),
                                                            search: PackageB.Banner_V202517.Search())
    let addToCartPrev = PackageB.Banner_V202516.AddToCart(product: PackageB.Banner_V202516.Product(),
                                                          search: PackageB.Banner_V202516.Search())
    print("----------------------")
    print("PackageB")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    let addToCartLatest = PackageC.Banner_V202517.AddToCart(product: PackageC.Banner_V202517.Product(),
                                                            search: PackageC.Banner_V202517.Search())
    let addToCartPrev = PackageC.Banner_V202516.AddToCart(product: PackageC.Banner_V202517.Product(),
                                                          search: PackageC.Banner_V202516.Search())
    
    print("----------------------")
    print("PackageC")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    let addToCartLatest = PackageD.Banner_V202517.AddToCart(product: PackageD.Banner.Product(),
                                                            search: PackageD.Banner_V202517.Search())
    let addToCartPrev = PackageD.Banner_V202516.AddToCart(product: PackageD.Banner.Product(),
                                                          search: PackageD.Banner_V202516.Search())
    print("----------------------")
    print("PackageD")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    let addToCartLatest = PackageE.Banner.AddToCart(product: PackageE.Banner.Product(),
                                                    search: PackageE.Banner.Search())
    let addToCartPrev = PackageE.Banner.AddToCart_V2_0_20(product: PackageE.Banner.Product(),
                                                          search: PackageE.Banner.Search_V1_6_5())
    print("----------------------")
    print("PackageE")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    let addToCartLatest = PackageF.Banner.AddToCart(product: PackageF.Banner.Product(),
                                                    search: PackageF.Banner.Search())
    let addToCartPrev = PackageF.Banner.AddToCart.V2_0_20(product: PackageF.Banner.Product(),
                                                          search: PackageF.Banner.Search.V1_6_5())
    let addToCartV3000 = PackageF.Banner.AddToCart.V3_0_0(product: PackageF.Banner.Product(),
                                                          search: PackageF.Banner.Search())
    print("----------------------")
    print("PackageF")
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()


_ = {
    // No SDK Updates to add the VX support because default will always be the same version as 'latest', in this case AddToCart V3
    // We can create objects that equivalent (default and V3) that would help with the migration to just using versioned objects
    // We have to adjust version suffixes on breaking change SDK updates
    // After enough breaking changes we'd be in PackageH, hopefully, if we can "train" producing teams 
    let addToCartLatest = PackageG.Banner.AddToCart(product: PackageG.Banner.Product(),
                                                    search: PackageG.Banner.Search())
    let addToCartPrev = PackageG.Banner.AddToCart.V2(product: PackageG.Banner.Product(),
                                                     search: PackageG.Banner.Search.V1())
    let addToCartV3 = PackageG.Banner.AddToCart.V3(product: PackageG.Banner.Product(),
                                                   search: PackageG.Banner.Search())
    print("----------------------")
    print(PackageG.name)
    print(addToCartLatest.version, addToCartLatest.product.version, addToCartLatest.search.version)
    print(addToCartV3.version, addToCartV3.product.version, addToCartV3.search.version)
    print(addToCartPrev.version, addToCartPrev.product.version, addToCartPrev.search.version)
}()

_ = {
    // We'd need to update every scenario with '_VX' (or '.VX' or whatever). This would require a migration plan of sorts, and tracking what has been done
    // We'd never have to go through and update the suffixes if we declare them during SDK updates
    
    let addToCartLate = PackageH.Banner.AddToCart_V3(product_v1: PackageH.Banner.Product_V1(),
                                                     search_v2: PackageH.Banner.Search_V2())
    let addToCartPrev = PackageH.Banner.AddToCart_V2(product_v1: PackageH.Banner.Product_V1(),
                                                     search_v1: PackageH.Banner.Search_V1())
    print("----------------------")
    print(PackageH.name)
    print(addToCartLate.version, addToCartLate.product_v1.version, addToCartLate.search_v2.version)
    print(addToCartPrev.version, addToCartPrev.product_v1.version, addToCartPrev.search_v1.version)
}()
