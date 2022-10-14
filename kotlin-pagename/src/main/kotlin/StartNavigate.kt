public data class StartNavigate(
    /**
     * Description: Identifies which component is being interacted with - Priority: TBD
     */
    public val componentName: String,
    /**
     * Description: Captures pagename an action occurred on in the following
     * format: {appName}:{appSection}:{pageName}. - Priority: TBD
     */
    // This kinda sucks and a custom serializer would be cooler.
    // It'd only have to be written once though
    public val pageNameObj: PageName,
    /**
     * Description: Captures the destination page/url of the link interacted with - Priority: TBD
     */
    public val destination: String? = null,
    /**
     * Description: A one based index of item in list, required if item is in a list - Priority: TBD
     */
    public val itemIndex: Long? = null
) {
    /**
     * Description: Captures which user action is being tracked - Priority: TBD
     */
    public val scenarioName: String = "start-navigate"

    /**
     * Description: Schema version - Priority: TBD
     */
    public val schemaVersion: String = "1.1.1"

    public val pageName: String = pageNameObj.toString()

    public companion object
}
