using System;
using PackageInterfaces;

namespace PackageA.Banner;

public struct Search: Versioned
{
    public string Version { get; } = "v2.0.1";

    public Search()
    {
    }
}
