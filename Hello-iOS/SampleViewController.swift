//
//  SampleViewController.swift
//  Hello-iOS
//
//  Created by go nakanishi on 2018/08/19.
//  Copyright © 2018年 Go Nakanishi. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class SampleViewController: UIViewController {
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        let board = UIView()
        view.addSubview(board)
        board.backgroundColor = .lightGray
        board.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(300)
            make.height.equalTo(400)
            make.center.equalToSuperview()
        }

        let label = UILabel()
        board.addSubview(label)
        label.text = "hello, Swift!"
        label.backgroundColor = .white
        label.snp.makeConstraints { (make) -> Void in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-10)
        }
        
        let button = UIButton()
        board.addSubview(button)
        button.backgroundColor = .black
        button.setTitle("ハロー", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(label.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        button.rx.tap
            .subscribe(onNext: { _ in
                label.text = "YES"
            })
            .disposed(by: disposeBag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
