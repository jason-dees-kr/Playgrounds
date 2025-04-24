using System;
using PackageInterfaces;

namespace PackageA.Banner;

public struct Product: Versioned
{
    public string Version { get; } = "Latest";

    public Product()
    {
    }
}
