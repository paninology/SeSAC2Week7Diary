//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by yongseok lee on 2022/08/16.
//

import UIKit
import SeSAC2UIFramwork


class ViewController: UIViewController {

    var name = "고래밥"
    
    private var age = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = CodeTaskViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
        testOpen()
        
//        showSesacAlert(title: "test alert", message: "test", buttonTitle: "저장") { _ in
//            self.view.backgroundColor = .lightGray
//        }
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC what's New!!!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
        let web = OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
    }


}

