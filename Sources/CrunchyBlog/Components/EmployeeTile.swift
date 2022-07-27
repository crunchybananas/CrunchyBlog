//
//  EmployeeTile.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Foundation
import Plot

internal struct EmployeeTile: Component {
  let name: String
  let title: String
  let imageUrl: URL
  
  var body: Component {
    Div {
      Image(imageUrl)
        .class("rounded-full grayscale")
      Div {
        Div(name).class("font-bold text-xl")
        Paragraph(title).class("text-gray-700 text-base")
      }.class("px-6 py-4 text-center")
    }.class("max-w-sm w-3/4 overflow-hidden mx-auto")
  }
}
