using System;
using PackageInterfaces;

namespace PackageE;

public struct Search() : Versioned
{
    public string Version { get; } = "v2.0.1";
}
