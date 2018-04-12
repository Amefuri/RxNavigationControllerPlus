//
//  UINavigationItem+Rx.swift
//  RxNavigationControllerPlus
//
//  Created by peerapat atawatana on 11/4/2561 BE.
//

#if os(iOS) || os(tvOS)

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UINavigationItem {
  
  /// Bindable sink for `titleView` property.
  public var titleView: Binder<UIView?> {
    return Binder(self.base) { navigationItem, titleView in
      navigationItem.titleView = titleView
    }
  }
  
  /// Bindable sink for `prompt` property.
  public var prompt: Binder<String?> {
    return Binder(self.base) { navigationItem, prompt in
      navigationItem.prompt = prompt
    }
  }
  
  /// Bindable sink for `backBarButtonItem` property.
  public var backBarButtonItem: Binder<UIBarButtonItem?> {
    return Binder(self.base) { navigationItem, backBarButtonItem in
      navigationItem.backBarButtonItem = backBarButtonItem
    }
  }
  
  /// Bindable sink for `hidesBackButton` property.
  public var hidesBackButton: Binder<Bool> {
    return Binder(self.base) { navigationItem, hidesBackButton in
      navigationItem.hidesBackButton = hidesBackButton
    }
  }
  
  /// Bindable sink for `leftBarButtonItems` property.
  public var leftBarButtonItems: Binder<[UIBarButtonItem]?> {
    return Binder(self.base) { navigationItem, leftBarButtonItems in
      navigationItem.leftBarButtonItems = leftBarButtonItems
    }
  }
  
  /// Bindable sink for `rightBarButtonItems` property.
  public var rightBarButtonItems: Binder<[UIBarButtonItem]?> {
    return Binder(self.base) { navigationItem, rightBarButtonItems in
      navigationItem.rightBarButtonItems = rightBarButtonItems
    }
  }
  
  /// Bindable sink for `leftItemsSupplementBackButton` property.
  public var leftItemsSupplementBackButton: Binder<Bool> {
    return Binder(self.base) { navigationItem, leftItemsSupplementBackButton in
      navigationItem.leftItemsSupplementBackButton = leftItemsSupplementBackButton
    }
  }
  
  /// Bindable sink for `leftBarButtonItem` property.
  public var leftBarButtonItem: Binder<UIBarButtonItem?> {
    return Binder(self.base) { navigationItem, leftBarButtonItem in
      navigationItem.leftBarButtonItem = leftBarButtonItem
    }
  }
  
  /// Bindable sink for `leftBarButtonItem` property.
  public var rightBarButtonItem: Binder<UIBarButtonItem?> {
    return Binder(self.base) { navigationItem, rightBarButtonItem in
      navigationItem.rightBarButtonItem = rightBarButtonItem
    }
  }
  
  /// Bindable sink for `largeTitleDisplayMode` property.
  @available(iOS 11.0, *)
  public var largeTitleDisplayMode: Binder<UINavigationItem.LargeTitleDisplayMode> {
    return Binder(self.base) { navigationItem, largeTitleDisplayMode in
      navigationItem.largeTitleDisplayMode = largeTitleDisplayMode
    }
  }
  
  /// Bindable sink for `searchController` property.
  @available(iOS 11.0, *)
  public var searchController: Binder<UISearchController?> {
    return Binder(self.base) { navigationItem, searchController in
      navigationItem.searchController = searchController
    }
  }
  
  /// Bindable sink for `searchController` property.
  @available(iOS 11.0, *)
  public var hidesSearchBarWhenScrolling: Binder<Bool> {
    return Binder(self.base) { navigationItem, hidesSearchBarWhenScrolling in
      navigationItem.hidesSearchBarWhenScrolling = hidesSearchBarWhenScrolling
    }
  }
}

#endif
