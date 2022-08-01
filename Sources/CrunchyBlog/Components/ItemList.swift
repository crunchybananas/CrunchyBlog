//
//  ItemList.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Foundation
import Plot
import Publish

internal struct ItemList<CrunchyBlog: Website>: Component {
  var items: [Item<CrunchyBlog>]
  var site: CrunchyBlog
  
  var body: Component {
    List(items) { item in
      Article {
        Span {
          Image(URL(string: "https://nuxt-tailwind-blog.netlify.app/_nuxt/img/academy.ceb301b.svg")!)
            .class("w-3 h-3 text-blue-600 dark:text-blue-400")
        }
        .class("flex absolute -left-3 justify-center items-center w-6 h-6 bg-blue-200 rounded-full ring-8 ring-white dark:ring-gray-900 dark:bg-blue-900")
        H3 {
          Link(item.title, url: item.path.absoluteString)
        }
          .class("flex items-center mb-1 text-lg font-semibold text-gray-900 dark:text-white")
        
        ItemTagList(item: item, site: site)
        Paragraph(item.description)
          .class("mb-4 text-base font-normal text-gray-500 dark:text-gray-400")
      }
      .class("mb-10 ml-6")
    }
    .listStyle(.ordered)
    .class("item-list relative border-l border-gray-200 dark:border-gray-700")
  }
}
