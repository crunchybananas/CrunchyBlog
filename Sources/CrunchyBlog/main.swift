import Foundation
import Publish
import Plot
import HighlightJSPublishPlugin
import ShellOut
import TaskRunner

struct Tile {
  let image: URL
  let header: String
  let content: String
}

// This type acts as the configuration for your website.
struct CrunchyBlog: Website {
  enum SectionID: String, WebsiteSectionID {
    // Add the sections that you want your website to contain here:
    case articles
  }
  
  struct ItemMetadata: WebsiteItemMetadata {
    // Add any site-specific metadata that you want to use here.
    var authors: [String]
  }
  
  // Update these properties to configure your website:
  var url = URL(string: "https://crunchybananas.com")!
  var name = "Crunchy Bananas"
  var description = "A description of CrunchyBlog"
  var language: Language { .english }
  var imagePath: Path? { nil }
}



// This will generate your website using the built-in Foundation theme:
try CrunchyBlog().publish(
  withTheme: .basic,
  additionalSteps: [
//    .step(named: "Run tailwind") { _ in
//      class TailwindRunner: TaskRunnerProtocol {
//        // TODO: Look at task runner and how to allow it to work as a non-protocol
//        private static let shared = TailwindRunner()
//        
//        static func run(_ url: Executable, command: [String]) async throws -> TaskStatus {
//          return try await withCheckedThrowingContinuation {
//            (continuation: CheckedContinuation<TaskStatus, Error>) in
//            print(url.rawValue, command)
//
//            try? Self.shared.run(url, command: command, callback: { status in
//              print(status)
//              continuation.resume(returning: status)
//            })
//          }
//        }
//      }
//      let path = URL(fileURLWithPath: #file).pathComponents.dropLast().joined(separator: "/")
//
//      try await TailwindRunner.run(.yarn, command: [ "--cwd", path, "build:tailwind"])
//      return
//    },
    .step(named: "Default section titles") { context in
      context.mutateAllSections { section in
        guard section.title.isEmpty else { return }
        
        switch section.id {
        case .articles:
          section.title = "Crunchy Blog"
        }
      }
    }],
  plugins: [.highlightJS()]
)
