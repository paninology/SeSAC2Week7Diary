//
//  CodeSnap2ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by yongseok lee on 2022/08/17.
//

import UIKit

class CodeSnap2ViewController: UIViewController {

    let blackView: UIView = {
            let view = UIView()
            view.backgroundColor = .black
            return view
        }()

    let redView: UIView = {
            let view = UIView()
            view.backgroundColor = .red
            return view
        }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach { //순서에 따라 레이어계층
            view.addSubview($0)
        }
        blackView.addSubview(yellowView) //containerView, stackView는 다른 형태
        
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        //RTL
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50) //offset과 차이
        }
        yellowView.snp.makeConstraints { make in
            make.edges.equalTo(blackView).inset(10)
        }
      
    }
    

  

}
