//
//  Extensions.swift
//  Hello-iOS
//
//  Created by go nakanishi on 2018/08/21.
//  Copyright © 2018年 Go Nakanishi. All rights reserved.
//

import Foundation

protocol ApplyProtocol {}
extension ApplyProtocol {
    @discardableResult func apply(_ closure: (_ this: Self) -> Void) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: ApplyProtocol {}
