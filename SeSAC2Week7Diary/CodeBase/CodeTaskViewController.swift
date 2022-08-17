//
//  CodeTaskViewController.swift
//  SeSAC2Week7Diary
//
//  Created by yongseok lee on 2022/08/17.
//

import UIKit

class CodeTaskViewController: UIViewController {

    let dismissButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
//        view.imageView?.preferredSymbolConfiguration
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "gift.circle"), for: .normal)
        return view
    }()
    
    let QRCodeButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "qrcode"), for: .normal)
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    let chattingButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    let setProfileButoon: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    let storyButton: UIButton = {
        let view = UIButton()
        view.basicButtonSet()
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        configureUI()

        
    }
    
    func configureUI() {
        [dismissButton, giftButton, QRCodeButton, settingButton, chattingButton, setProfileButoon, storyButton].forEach {
            view.addSubview($0)
        }
        
        dismissButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.leadingMargin.equalTo(8)
            make.height.equalTo(32)
            make.width.equalTo(32)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(dismissButton)
            make.trailingMargin.equalTo(-8)
            make.height.equalTo(32)
            make.width.equalTo(32)
        }
        QRCodeButton.snp.makeConstraints { make in
            make.top.equalTo(dismissButton)
            make.trailingMargin.equalTo(settingButton.snp.leading).offset(-16)
            make.height.equalTo(32)
            make.width.equalTo(32)
        }
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(dismissButton)
            make.trailingMargin.equalTo(QRCodeButton.snp.leading).offset(-16)
            make.height.equalTo(32)
            make.width.equalTo(32)
        }
        
        chattingButton.snp.makeConstraints { make in
            make.bottomMargin.equalTo(view.safeAreaLayoutGuide).offset(-16)
            make.height.equalTo(44)
            make.width.equalTo(44)
        }
        
        setProfileButoon.snp.makeConstraints { make in
            make.bottomMargin.equalTo(chattingButton.snp.bottom)
        }
        
        
    }

}
