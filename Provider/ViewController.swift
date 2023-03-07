//
//  ViewController.swift
//  Provider
//
//  Created by 张占勇 on 2023/3/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let observable = Observable<Int> { ob in
            ob.onNext(elment: 4)
            ob.onNext(elment: 5)
        }
        observable.subcriber { el in
            print(el)
        }
    }


}

