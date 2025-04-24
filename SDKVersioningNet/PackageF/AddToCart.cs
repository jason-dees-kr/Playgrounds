namespace PackageF;

public struct AddToCart(Product product, Search search)
{
    public string Version { get; } = "v3.0.0";
    public Product Product { get; } = product;
    public Search Search { get; } = search;

    public struct V2_0_20(Product product, Search.V1_6_5 search)
    {

        public string Version { get; } = "v2.0.20";
        public Product Product { get; } = product;
        public Search.V1_6_5 Search { get; } = search;
    }
}