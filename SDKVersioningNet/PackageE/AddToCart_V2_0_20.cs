using PackageInterfaces;

namespace PackageE;

public readonly struct AddToCart_V2_0_20(Product product, Search_V1_6_5 search) : Versioned
{
    public string Version { get; } = "v2.0.20";
    public Product Product { get; } = product;
    public Search_V1_6_5 Search { get; } = search;
}
