//
//  Observer.swift
//  Provider
//
//  Created by 张占勇 on 2023/3/7.
//

import Foundation

protocol ObserverType {
    
    associatedtype Element
    func onNext(elment: Element)
    func onCore(elment: Element)
}

extension ObserverType {
    
    func onNext(elment: Element){
        self.onCore(elment:elment)
    }
}

class Observer<Element> {
    
    var eventHandel: (Element) -> Void
    
    init(_ eventHandel: @escaping (Element) -> Void){
        self.eventHandel = eventHandel
    }
}
extension Observer: ObserverType {
    
    func onCore(elment: Element){
        self.eventHandel(elment)
    }
}
