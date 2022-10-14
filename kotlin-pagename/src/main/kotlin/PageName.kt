class SDKSettings (val appRootName: String) {
    init {
        Shared = this;
    }
    companion object {
        var Shared: SDKSettings? = null
            private set
    }
}
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