//
//  UINavigationBar+Rx.swift
//  RxNavigationControllerPlus
//
//  Created by peerapat atawatana on 11/4/2561 BE.
//

#if os(iOS) || os(tvOS)

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UINavigationBar {
  
  /// Bindable sink for `barStyle` property.
  public var barStyle: Binder<UIBarStyle> {
    return Binder(self.base) { navigationBar, barStyle in
      navigationBar.barStyle = barStyle
    }
  }
  
  /// Bindable sink for `isTranslucent` property.
  public var isTranslucent: Binder<Bool> {
    return Binder(self.base) { navigationBar, isTranslucent in
      navigationBar.isTranslucent = isTranslucent
    }
  }
  
  /// Bindable sink for `tintColor` property.
  public var tintColor: Binder<UIColor> {
    return Binder(self.base) { navigationBar, tintColor in
      navigationBar.tintColor = tintColor
    }
  }
  
  /// Bindable sink for `barTintColor` property.
  public var barTintColor: Binder<UIColor> {
    return Binder(self.base) { navigationBar, barTintColor in
      navigationBar.barTintColor = barTintColor
    }
  }
  
  /// Bindable sink for `items` property.
  public var items: Binder<[UINavigationItem]?> {
    return Binder(self.base) { navigationBar, items in
      navigationBar.items = items
    }
  }
  
  /// Bindable sink for `prefersLargeTitles` property.
  @available(iOS 11.0, *)
  public var prefersLargeTitles: Binder<Bool> {
    return Binder(self.base) { navigationBar, prefersLargeTitles in
      navigationBar.prefersLargeTitles = prefersLargeTitles
    }
  }
  
  /// Bindable sink for `shadowImage` property.
  public var shadowImage: Binder<UIImage?> {
    return Binder(self.base) { navigationBar, shadowImage in
      navigationBar.shadowImage = shadowImage
    }
  }
  
  /// Bindable sink for `titleTextAttributes` property.
  public var titleTextAttributes: Binder<[NSAttributedStringKey : Any]?> {
    return Binder(self.base) { navigationBar, titleTextAttributes in
      navigationBar.titleTextAttributes = titleTextAttributes
    }
  }
  
  /// Bindable sink for `largeTitleTextAttributes` property.
  @available(iOS 11.0, *)
  public var largeTitleTextAttributes: Binder<[NSAttributedStringKey : Any]?> {
    return Binder(self.base) { navigationBar, largeTitleTextAttributes in
      navigationBar.largeTitleTextAttributes = largeTitleTextAttributes
    }
  }
  
  /// Bindable sink for `backIndicatorImage` property.
  @available(iOS 11.0, *)
  public var backIndicatorImage: Binder<UIImage?> {
    return Binder(self.base) { navigationBar, backIndicatorImage in
      navigationBar.backIndicatorImage = backIndicatorImage
    }
  }
  
  /// Bindable sink for `backIndicatorTransitionMaskImage` property.
  public var backIndicatorTransitionMaskImage: Binder<UIImage?> {
    return Binder(self.base) { navigationBar, backIndicatorTransitionMaskImage in
      navigationBar.backIndicatorTransitionMaskImage = backIndicatorTransitionMaskImage
    }
  }
}

#endif
