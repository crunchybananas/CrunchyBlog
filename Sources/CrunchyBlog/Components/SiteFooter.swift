//
//  SiteFooter.swift
//  
//
//  Created by Cory Loken on 7/27/22.
//

import Plot

internal struct SiteFooter: Component {
  var body: Component {
    Footer {
      Div {
        Text("© 2022 Crunchy Bananas, LLC All rights reserved")
      }
      Div {
        Link("Privacy Policy", url: "https://crunchybananas.com/privacy-policy")
      }
    }
    .class("text-sm p-8")
  }
}
