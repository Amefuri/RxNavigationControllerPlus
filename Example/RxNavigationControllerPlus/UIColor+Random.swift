//
//  UIColor+.swift
//  RxNavigationControllerPlus_Example
//
//  Created by peerapat atawatana on 12/4/2561 BE.
//  Copyright © 2561 CocoaPods. All rights reserved.
//

import UIKit

extension UIColor {
  static func random() -> UIColor {
    return UIColor(red:   .random(),
                   green: .random(),
                   blue:  .random(),
                   alpha: 1.0)
  }
}
