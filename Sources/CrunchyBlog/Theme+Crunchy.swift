//
//  Theme+Crunchy.swift
//
//
//  Created by Cory Loken on 2022-07-25.
//

import Foundation
import Publish
import Plot

extension Theme where Site == CrunchyBlog {
  static var basic: Self {
    Theme(
      htmlFactory: BasicHTMLFactory(),
      resourcePaths: ["Resources/CrunchyTheme/theme.css"]
    )
  }
  
  struct BasicHTMLFactory: HTMLFactory {
    func makeIndexHTML(for index: Index,
                       context: PublishingContext<CrunchyBlog>) throws -> HTML {
      HTML(
        .lang(context.site.language),
        .head(for: index, on: context.site),
        .body {
          SiteHeader(context: context, selectedSelectionID: nil)
          Wrapper {
            Div {
              H1("Let’s be honest. We’re bananas.")
                .class("font-extrabold text-4xl mb-10 text-center text-cb-dark-blue")
              Paragraph("We’re crazy enough to believe that quality software is the expression of a quality conversation with you, our client; that good ideas evolve; and that well-crafted code brings those ideas to life.")
                .class("mb-6 text-gray-700")
              Paragraph("Let’s work together to kickstart your idea, beat that deadline, supercharge your team, and create a solid foundation of technology for your company.")
                .class("text-gray-700")
            }.class("mx-auto max-w-4xl ")
          }.class("bg-cb-yellow ml-auto mr-auto px-8 py-16")
          
          Wrapper {
            H2("We Build Quality Apps")
              .class("font-extrabold text-3sm text-3xl text-center mb-16 text-cb-dark-blue")
            Div {
              Div {
                Image(URL(string: "images/tile_1.jpg")!)
                  .class("w-full")
                Div {
                  H3("Mobile Apps").class("font-bold text-xl mb-2")
                  Paragraph("Let's work together to create and deliver your mobile app ideas tothe world.")
                    .class("text-gray-700 text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto rounded overflow-hidden shadow-lg")
              Div {
                Image(URL(string: "images/tile_2.jpg")!)
                  .class("w-full")
                Div {
                  H3("Web Apps").class("font-bold text-xl mb-2")
                  Paragraph("With years of combined experience, our team is ready to help you create ambitious web applications that run in any modern browser.")
                    .class("text-gray-700 text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto rounded overflow-hidden shadow-lg")
              Div {
                Image(URL(string: "images/tile_3.jpg")!)
                  .class("w-full")
                Div {
                  H3("Consulting").class("font-bold text-xl mb-2")
                  Paragraph("We can join forces with your existing development team or work on our own to transform your vision into a lasting reality.")
                    .class("text-gray-700 text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto rounded overflow-hidden shadow-lg")
            }.class("grid grid-cols-1 md:grid-cols-3 gap-4 bg-white")
          }.class("bg-cb-light-gray ml-auto mr-auto px-8 py-16")
          
          Wrapper {
            H2("The Scene Behind the Screen")
              .class("font-extrabold text-3xl text-center mb-10 text-white")
            Paragraph("Mobile and web apps are what your customers see. When your customers click \"Buy Now\" or create content worthy of sharing, those orders and that content have to go... somewhere...")
              .class("pb-16 max-w-4xl mx-auto")
            Div {
              Div {
                Image(URL(string: "images/tile_4.png")!)
                  .class("w-2/4 mx-auto")
                Div {
                  H3("API Design").class("font-bold text-xl mb-2")
                  Paragraph("We are experts at sending and receiving data between client apps and servers.")
                    .class("text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto")
              Div {
                Image(URL(string: "images/tile_5.png")!)
                  .class("w-2/4 mx-auto")
                Div {
                  H3("Database Optimization").class("font-bold text-xl mb-2")
                  Paragraph("We can cook up a relational or document-backed database design to suit your app's needs.")
                    .class("text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto")
              Div {
                Image(URL(string: "images/tile_6.png")!)
                  .class("w-2/4 mx-auto")
                Div {
                  H3("E-commerce").class("font-bold text-xl mb-2")
                  Paragraph("Sell goods or services through your app? Awesome. So do we. And we'd love to get you setup too.")
                    .class("text-base")
                }.class("px-6 py-4")
              }.class("max-w-sm mx-auto")
            }.class("grid grid-cols-1 md:grid-cols-3 gap-4")
          }.class("bg-cb-dark-blue text-white ml-auto mr-auto px-8 py-16")
          Wrapper {
            // Blockquote {
            Div {
              H3("“From Apples to Bananas, these code monkeys write code that’s functional AND elegant.”").class("p1 text-center font-bold")
              Paragraph("_________________").class("text-center")
              Paragraph("~ Rob").class("text-center")
            }.class("p-12 md:p-24")
          }.class("bg-cb-light-blue blue-wood text-white ml-auto mr-auto px-8 py-16")
          
          Wrapper {
            H2("The Crunchy Bunch").class("font-extrabold text-3xl text-center mb-16 text-cb-dark-blue")
            Div {
              EmployeeTile(name: "Cory Loken", title: "Founder", imageUrl: URL(string: "images/cory-loken.jpg")!)
              EmployeeTile(name: "Julia Donaldson", title: "VP of Engineering", imageUrl: URL(string: "images/julia-donaldson.jpg")!)
            }.class("grid grid-cols-1 md:grid-cols-2 gap-4 text-gray-700")
            Div {
              EmployeeTile(name: "Dana Franklin", title: "Engineering Consultant", imageUrl: URL(string: "images/dana-franklin.jpg")!)
              EmployeeTile(name: "Alissa Nordmoe", title: "Engineering Consultant", imageUrl: URL(string: "images/alissa-nordmoe.png")!)
              EmployeeTile(name: "Luke Street", title: "Engineering Consultant", imageUrl: URL(string: "images/luke-street.jpg")!)
            }.class("grid grid-cols-1 md:grid-cols-3 gap-4 text-gray-700")
          }.class("bg-cb-yellow ml-auto mr-auto px-8 py-16")
          
          Wrapper {
            Div {
              let parts = context.site.name.split(separator: " ")
              Span(parts.first?.description ?? "").class("logo-text")
              Span(parts.last?.description ?? "")
            }.class("text-cb-yellow text-4xl")
            Paragraph("Asheville, NC").class("text-white")
            Paragraph {
              Link(
                "info@crunchybananas.com",
                url: URL(string: "mailto:info@crunchybananas.com?Subject=Let%27s%20Chat%21")!
              )
            }
          }.class("bg-cb-dark-blue text-white px-8 py-16")
          SiteFooter()
        }
      )
    }
    
    func makeSectionHTML(for section: Section<CrunchyBlog>,
                         context: PublishingContext<CrunchyBlog>) throws -> HTML {
      HTML(
        .lang(context.site.language),
        .head(for: section, on: context.site),
        .body {
          SiteHeader(context: context, selectedSelectionID: section.id)
          Wrapper {
            // H1(section.title)
            ItemList(items: section.items, site: context.site)
          }.class("m-20 mt-10")
          SiteFooter()
        }
      )
    }
    
    func makeItemHTML(for item: Item<CrunchyBlog>,
                      context: PublishingContext<CrunchyBlog>) throws -> HTML {
      HTML(
        .lang(context.site.language),
        .head(for: item, on: context.site),
        .body(
          .class("item-page"),
          .components {
            SiteHeader(context: context, selectedSelectionID: item.sectionID)
            Wrapper {
              Article {
                Text(item.metadata.authors.joined(separator: ", "))
                Div(item.content.body).class("content")
                Span("Tagged with: ")
                ItemTagList(item: item, site: context.site)
              }
            }
            SiteFooter()
          }
        )
      )
    }
    
    func makePageHTML(for page: Page,
                      context: PublishingContext<CrunchyBlog>) throws -> HTML {
      HTML(
        .lang(context.site.language),
        .head(for: page, on: context.site),
        .body {
          SiteHeader(context: context, selectedSelectionID: nil)
          Wrapper(page.body)
          SiteFooter()
        }
      )
    }
    
    func makeTagListHTML(for page: TagListPage,
                         context: PublishingContext<CrunchyBlog>) throws -> HTML? {
      HTML(
        .lang(context.site.language),
        .head(for: page, on: context.site),
        .body {
          SiteHeader(context: context, selectedSelectionID: nil)
          Wrapper {
            H1("Browse all tags")
            List(page.tags.sorted()) { tag in
              ListItem {
                Link(tag.string,
                     url: context.site.path(for: tag).absoluteString
                )
              }
              .class("tag")
            }
            .class("all-tags")
          }
          SiteFooter()
        }
      )
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage,
                            context: PublishingContext<CrunchyBlog>) throws -> HTML? {
      HTML(
        .lang(context.site.language),
        .head(for: page, on: context.site),
        .body {
          SiteHeader(context: context, selectedSelectionID: nil)
          Wrapper {
            H1 {
              Text("Tagged with ")
              Span(page.tag.string).class("tag")
            }
            
            Link("Browse all tags",
                 url: context.site.tagListPath.absoluteString
            )
            .class("browse-all")
            
            ItemList(
              items: context.items(
                taggedWith: page.tag,
                sortedBy: \.date,
                order: .descending
              ),
              site: context.site
            )
          }
          SiteFooter()
        }
      )
    }
  }
}

private struct Wrapper: ComponentContainer {
  @ComponentBuilder var content: ContentProvider
  
  var body: Component {
    Div(content: content)
      .class("wrapper")
  }
}

