//
//  SampleViewController.swift
//  Hello-iOS
//
//  Created by go nakanishi on 2018/08/19.
//  Copyright © 2018年 Go Nakanishi. All rights reserved.
//

import UIKit
import SnapKit

class SampleViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "hello, swift!"
        view.addSubview(label)
        label.snp.makeConstraints { (make) -> Void in
            make.center.equalToSuperview()
        }
        
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("ハロー", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(label)
            make.top.equalTo(label.snp.bottom).offset(10)
            make.left.equalTo(label)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
