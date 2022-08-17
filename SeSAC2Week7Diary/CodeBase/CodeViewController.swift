//
//  CodeViewController.swift
//  SeSAC2Week7Diary
//
//  Created by yongseok lee on 2022/08/17.
//

import UIKit
/*
 공통
 1. 뷰객체 프로퍼티 선언. 클래스의 인스턴스 생성
 2. 명시적으로 루트뷰에 추가
 3. 크기와 위치 및 속성 정의
    => frame기반 한계( 다양한 해상도. 크기....)
    => AutoResizingMask, AutoLayout 등장
    => NSLayoutConstraints
 */

class CodeViewController: UIViewController {

    //1. 뷰객체 프로퍼티선언. 클래스의 인스턴스 생성
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let signButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //2. 명시적으로 루트뷰에 추가
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signButton)

       //3. 크기와 위치 및 속성 정의
        
        //1.frame 기반
        emailTextField.frame = CGRect(x: 50, y: 80, width: UIScreen.main.bounds.width - 100, height: 50)
        emailTextField.borderStyle = .line
        emailTextField.backgroundColor = .lightGray
        view.backgroundColor = .blue
        passwordTextField.backgroundColor = .brown
        //2. NSLayoutConstraints
//        passwordTextField.translatesAutoresizingMaskIntoConstraints = false //안끄면 충돌 일어남. 오토리사이징은 프레임기반에서 쓰이는것
//        let top = NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 100)
//        top.isActive = true //레이아웃 활성화
//        NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 50).isActive = true
//        NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: emailTextField, attribute: .trailing, multiplier: 1, constant: -50).isActive = true
//        NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 60).isActive = true
        
        //3. NSLauoutCostraints addConstraints
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false //안끄면 충돌 일어남. 오토리사이징은 프레임기반에서 쓰이는것
        let top = NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 100)

        let leading = NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 50)
        let trailing = NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: emailTextField, attribute: .trailing, multiplier: 1, constant: -50)
        let height = NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 60)
        
        view.addConstraints([top, leading, trailing, height])
        
        //4. NSLayoutAnchor
        signButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signButton.widthAnchor.constraint(equalToConstant: 300),
            signButton.heightAnchor.constraint(equalToConstant: 50),
            signButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
        
    }
    

  

}
