/**
 * Version: 1.1.1 */
public struct StartNavigate: Encodable {
    
    /**
     * Description: Identifies which component is being interacted with - Priority: TBD */
    public let componentName: String
    /**
     * Description: Captures the destination url of the link interacted with - Priority: TBD */
    public let destination: String?
    /**
     * Description: A one based index of item in list - Priority: TBD */
    public let itemIndex: Int?
    /**
     * Description: Captures page name user action occurred - Priority: Tier A */
    public let pageName: PageName
    /**
     * Description: Captures which user action is being tracked - Priority: TBD */
    public let scenarioName: String = "start-navigate"
    /**
     * Description: Self descriptive version - Priority: TBD */
    public let schemaVersion: String = "1.1.1"
    
    public init(
        componentName: String,
        destination: String? = nil,
        itemIndex: Int? = nil,
        pageName: PageName
    ) {
        self.componentName = componentName
        self.destination = destination
        self.itemIndex = itemIndex
        self.pageName = pageName
    }
}
