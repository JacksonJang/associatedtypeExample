//
//  ViewController.swift
//  associatedtypeExample
//
//  Created by 장효원 on 4/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var names = NameDatabase()
        names.add(item: "hyowon")
        names.add(item: "jackson")
        
        names.items.forEach{ print($0) }
    }

}

// MARK: - associatedtype 예시
protocol ItemStoring {
    associatedtype DataType

    var items: [DataType] { get set}
    mutating func add(item: DataType)
}

extension ItemStoring {
    mutating func add(item: DataType) {
        items.append(item)
    }
}

struct NameDatabase: ItemStoring {
    var items = [String]()
}
