class SDKSettings (val appRootName: String) {
    init {
        Shared = this;
    }
    companion object {
        var Shared: SDKSettings? = null
            private set
    }
}

// This would require a custom serializer object declaration
// https://github.com/Kotlin/kotlinx.serialization/blob/master/docs/serializers.md#custom-serializers
// Alternatively, like with the demeter one, we can just do PageName("p", "q", "r").toString();
//@Serializable(with = PageNameSerializer::class)
class PageName {

    private var _parts: MutableList<String> = mutableListOf()
    // Kinda hate this
    // I hate this shared pattern
    private val _prefix: String = SDKSettings.Shared?.appRootName ?: "Not Set"

    constructor(vararg  pageNameParts: String) {
        _parts.add(_prefix)
        for (part in pageNameParts) {
            add(part)
        }
    }

    fun add(part: String): Boolean {
        if(part == _prefix){ return false }
        return _parts.add(part)
    }

    fun pop(): String {
        return _parts.removeLast()
    }

    override fun toString(): String {
        return _parts.joinToString(":")
    }
}


object PageNameSerializer : KSerializer<PageName> {
    override val descriptor: String = "PageName Serializer" // not actually a real thing

    override fun deserialize(decoder: Decoder): PageName {
        TODO("Not yet implemented")
        val string = decoder.decodeString()
        return PageName(*string.split(":").toTypedArray())
    }

    override fun serialize(encoder: Encoder, value: PageName) {
        val stringVal = value.toString()
        encoder.encodeString(stringVal)
    }

}
// **************************
// THIS IS ALL EXTREMELY FAKE
// **************************
// dependency imports suck and i don't feel like dealing with gradle
interface KSerializer<T> {
    val descriptor: String
    fun serialize(encoder: Encoder, value: T)


    fun deserialize(decoder: Decoder): T

}

class Encoder {
    fun encodeString(value: String){
        println(value)
    }
}

class Decoder {
    fun decodeString() : String {
        return "khx:home:walk:steps:count"
    }
}