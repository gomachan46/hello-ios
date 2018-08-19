//
//  ViewController.swift
//  Hello-iOS
//
//  Created by go nakanishi on 2018/08/18.
//  Copyright © 2018年 Go Nakanishi. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let box = UIView()
        box.backgroundColor = .black
        view.addSubview(box)
        box.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
