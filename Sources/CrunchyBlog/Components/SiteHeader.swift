//
//  SiteHeader.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Plot
import Publish

internal struct SiteHeader<CrunchyBlog: Website>: Component {
  var context: PublishingContext<CrunchyBlog>
  var selectedSelectionID: CrunchyBlog.SectionID?
  
  var body: Component {
    Header {
      Div {
        Div {
          Link(url: "/") {
            let parts = context.site.name.split(separator: " ")
            Span(parts.first?.description ?? "").class("logo-text")
            Span(parts.last?.description ?? "")
          }
          .class("site-name text-cb-yellow text-3xl md:text-4xl")
        }.class("flex items-center flex-grow  mr-6")
        navigation
      }.class("cb-container flex items-center justify-between flex-wrap text-white")
    }
    .class("p-6")
  }
  
  private var navigation: Component {
    Navigation {
      List(CrunchyBlog.SectionID.allCases) { sectionID in
        let section = context.sections[sectionID]
        
        return Link(section.title,
                    url: section.path.absoluteString
        )
        .class(sectionID == selectedSelectionID ? "selected" : "")
      }
    }
  }
}
