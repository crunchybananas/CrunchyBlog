//
//  ItemTagList.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Publish
import Plot

internal struct ItemTagList<CrunchyBlog: Website>: Component {
  var item: Item<CrunchyBlog>
  var site: CrunchyBlog
  
  var body: Component {
    List(item.tags) { tag in
      Link(tag.string, url: site.path(for: tag).absoluteString)
        .class("bg-blue-100 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ml-3")
    }
    .class("tag-list flex flex-wrap py-6 space-x-2 border-t border-dashed dark:border-gray-400")
  }
}
