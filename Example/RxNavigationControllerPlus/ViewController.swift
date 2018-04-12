//
//  ViewController.swift
//  RxNavigationControllerPlus
//
//  Created by amefuri on 04/11/2018.
//  Copyright (c) 2018 amefuri. All rights reserved.
//

import UIKit
import RxSwift
import RxNavigationControllerPlus
import Darwin
import RxCocoa

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    bindNavigationController()
  }
  
  func bindNavigationController() {
    guard let navigationController = navigationController else { return }
    
    let changeTitleTrigger        = PublishSubject<Void>()
    let changePromptTrigger       = PublishSubject<Void>()
    let changeBarColorTrigger     = PublishSubject<Void>()
    let changeTintColorTrigger    = PublishSubject<Void>()
    let changeBarStyleTrigger     = PublishSubject<Void>()
    let changeTranslucentTrigger  = PublishSubject<Void>()
    
    // =======================================================================================
    
    changeTitleTrigger
      .map { "Title \(arc4random_uniform(UInt32(100)))" }
      .bind(to: navigationItem.rx.title)
      .disposed(by: disposeBag)
    
    changePromptTrigger
      .map { "Prompt \(arc4random_uniform(UInt32(100)))" }
      .bind(to: navigationItem.rx.prompt)
      .disposed(by: disposeBag)
    
    changeBarColorTrigger
      .map { .random() }
      .bind(to: navigationController.navigationBar.rx.barTintColor)
      .disposed(by: disposeBag)
    
    changeTintColorTrigger
      .map { .random() }
      .bind(to: navigationController.navigationBar.rx.tintColor)
      .disposed(by: disposeBag)
    
    changeBarStyleTrigger
      .scan(0, accumulator: { (index, _) in index == 0 ? 1 : 0 })
      .map {
        let styles = [UIBarStyle.default, UIBarStyle.black]
        return styles[$0] }
      .bind(to: navigationController.navigationBar.rx.barStyle)
      .disposed(by: disposeBag)
    
    changeTranslucentTrigger
      .scan(false, accumulator: { (translucent, _) in !translucent })
      .bind(to: navigationController.navigationBar.rx.isTranslucent)
      .disposed(by: disposeBag)
    
    // =======================================================================================
    
    Observable
      .just(
        ["[UINavigationItem] Change Title",
         "[UINavigationItem] Change Prompt",
         "[UINavigationBar] Change BarColor",
         "[UINavigationBar] Change TintColor",
         "[UINavigationBar] Change BarStyle",
         "[UINavigationBar] Change IsTranslucent"])
      .bind(to: tableView.rx.items(cellIdentifier: "CellId", cellType: UITableViewCell.self))
        { (row, element, cell) in cell.textLabel?.text = element }
      .disposed(by: disposeBag)
    
    tableView
      .rx
      .itemSelected
      .subscribe(onNext: { [unowned self] indexPath in
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
          changeTitleTrigger.onNext(())
        case 1:
          changePromptTrigger.onNext(())
        case 2:
          changeBarColorTrigger.onNext(())
        case 3:
          changeTintColorTrigger.onNext(())
        case 4:
          changeBarStyleTrigger.onNext(())
        case 5:
          changeTranslucentTrigger.onNext(())
        default:
          break
        }
      })
      .disposed(by: disposeBag)
  }
}

