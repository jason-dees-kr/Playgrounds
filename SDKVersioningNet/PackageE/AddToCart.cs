using PackageInterfaces;

namespace PackageE;

public readonly struct AddToCart(Product product, Search search): Versioned
{
    public string Version { get; } = "v3.0.0";
    public Product Product {get;} = product;
    public Search Search {get;} = search;
}
