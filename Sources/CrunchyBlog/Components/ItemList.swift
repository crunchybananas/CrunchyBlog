//
//  ItemList.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Foundation
import Plot
import Publish

// Used to be this, but was causing issue with items.
//internal struct ItemList<CrunchyBlog>: Component {

internal struct ItemList: Component {
  var items: [Item<CrunchyBlog>]
  var site: CrunchyBlog
  
  var body: Component {
    List(items) { item in
      Article {
        H3 {
          Link(item.title, url: item.path.absoluteString)
        }
        .class("flex items-center mb-1 text-lg font-semibold text-gray-900 dark:text-white")
        
        Paragraph(content: {
          Text(item.metadata.authors.joined(separator: ", "))
          Text(" • ")
          Text(item.date.formatted(date: .long, time: .omitted))
        })
        .class("text-sm")
        Paragraph(item.description)
          .class("mb-4 text-base font-normal text-gray-500 dark:text-gray-400")
        ItemTagList(item: item, site: site)
      }
      .class("mb-10")
      .class("container mx-auto overflow-hidden rounded-lg shadow-sm scrollbar-none")
      .class("space-y-8 dark:bg-gray-800 dark:text-gray-50 p-6")
    }
    .listStyle(.ordered)
    .class("item-list relative dark:border-gray-700 dark:bg-slate-900")
    .class("max-w-4xl py-16 mx-auto space-y-12")
  }
}
