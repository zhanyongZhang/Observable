//
//  OberVabel.swift
//  Provider
//
//  Created by 张占勇 on 2023/3/7.
//

import Foundation
import UIKit

protocol ObservableType {
    
    associatedtype Element
    func subcriber(onNext:@escaping (Element) ->Void)
    func subcriber(ob: Observer<Element>)
}

extension ObservableType {
    
    func subcriber(onNext:@escaping (Element) ->Void){
        let ob = Observer(onNext)
        self.subcriber(ob: ob)
    }
}

class  Observable<Element> {
    
    var observer: (Observer<Element>) -> Void
    init(observer: @escaping (Observer<Element>) -> Void){
        self.observer = observer
    }
}

extension Observable: ObservableType {
    
    func subcriber(ob: Observer<Element>) {
        self.observer(ob)
    }
}
