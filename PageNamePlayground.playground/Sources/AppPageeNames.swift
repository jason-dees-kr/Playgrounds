/**
 * swiftlint:disable identifier_name type_body_length file_length */
public enum AppPageNames : Encodable, Equatable {
    
    /**
     * Onboarding - app:onboarding */
    case onboarding
    /**
     * Profile Completion Widget - app:onboarding:profile-completion */
    case onboardingProfileCompletion
    /**
     * Campaign Over - app:campaign-over */
    case campaignOver
    /**
     * AMP Screen Title - app:native-amp-screen:\(pageTitle.lowercased()) */
    case nativeAmpScreenPageTitle(pageTitle: String)
    /**
     * AR Scan Home Page - app:ar-scan:home */
    case arScanHome
    /**
     * AR Tutorial Pages - app:ar-scan:tutorial:\(pageTitle.lowercased()) */
    case arScanTutorialPageTitle(pageTitle: String)
    /**
     * Consecutive AR Pages (includes non-tutorial modals overlaid with the AR Scanning page) - app:ar-scan:\(pageTitle.lowercased()) */
    case arScanPageTitle(pageTitle: String)
    /**
     * Home - app:dashboard:home */
    case dashboardHome
    /**
     * Consecutive Dashboard Pages (includes non-tutorial modals overlaid with the dashboard page) - app:dashboard:\(pageTitle.lowercased()) */
    case dashboardPageTitle(pageTitle: String)
    /**
     * Home - app:home */
    case home
    /**
     * Order Ahead Fresh Home - app:home:order-ahead-fresh */
    case homeOrderAheadFresh
    /**
     * Timeslot Widget (reserve time) - app:home:reserve-time */
    case homeReserveTime
    
    public var value: String {
        switch self {
        case .onboarding:
            return "app:onboarding"
        case .onboardingProfileCompletion:
            return "app:onboarding:profile-completion"
        case .campaignOver:
            return "app:campaign-over"
        case let .nativeAmpScreenPageTitle(pageTitle):
            return "app:native-amp-screen:\(pageTitle.lowercased())"
        case .arScanHome:
            return "app:ar-scan:home"
        case let .arScanTutorialPageTitle(pageTitle):
            return "app:ar-scan:tutorial:\(pageTitle.lowercased())"
        case let .arScanPageTitle(pageTitle):
            return "app:ar-scan:\(pageTitle.lowercased())"
        case .dashboardHome:
            return "app:dashboard:home"
        case let .dashboardPageTitle(pageTitle):
            return "app:dashboard:\(pageTitle.lowercased())"
        case .home:
            return "app:home"
        case .homeOrderAheadFresh:
            return "app:home:order-ahead-fresh"
        case .homeReserveTime:
            return "app:home:reserve-time"
        }// swiftlint:disable:next cyclomatic_complexity function_body_length
    }
    
    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.singleValueContainer()
        try container.encode(self.value)
    }
    
}
