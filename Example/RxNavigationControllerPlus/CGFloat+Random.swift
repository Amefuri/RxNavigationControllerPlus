//
//  CGFloat+.swift
//  RxNavigationControllerPlus_Example
//
//  Created by peerapat atawatana on 12/4/2561 BE.
//  Copyright © 2561 CocoaPods. All rights reserved.
//

import UIKit

extension CGFloat {
  static func random() -> CGFloat {
    return CGFloat(arc4random()) / CGFloat(UInt32.max)
  }
}
