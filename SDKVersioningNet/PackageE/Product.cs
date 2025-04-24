using System;
using PackageInterfaces;

namespace PackageE;

public struct Product(): Versioned
{
    public string Version {get;} = "latest";
}
