// See https://aka.ms/new-console-template for more information

// using PackageE;

// Console.WriteLine(new AddToCart(new Product(), new Search()).Version);
// Console.WriteLine(new AddToCart_V2_0_20(new Product(), new Search_V1_6_5()).Version);

using PackageF;

Console.WriteLine(new AddToCart(new Product(), new Search()).Version);
Console.WriteLine(new AddToCart.V2_0_20(new Product(), new Search.V1_6_5()).Version);

    // I don't want to do facades really
    // A lot of this would be run time builds instead of compile time
    // How can we do this without rebuilding the entire app too?
    // We'd need function/constructor signatures to be the same as they are now-ish
    // an addition to what we have, not a complete replacement