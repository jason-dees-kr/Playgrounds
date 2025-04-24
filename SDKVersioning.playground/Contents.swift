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
