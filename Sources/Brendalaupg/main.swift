import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Brendalaupg: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case articles
        case projects
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://brendalaupg.com")!
    var name = "Brenda Lau"
    var description = "Articles and devlogs."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Brendalaupg().publish(withTheme: .brendasTheme)
