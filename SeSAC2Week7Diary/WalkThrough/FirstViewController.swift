//
//  FirstViewController.swift
//  SeSAC2Week7Diary
//
//  Created by yongseok lee on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var blackViewWidth: NSLayoutConstraint!
    
    @IBOutlet weak var starImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        animateImageView()
        starImageView.image = UIImage(systemName: "star")
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
        일기 씁시다.
        잘 써봅시다.
        """
        tutorialLabel.numberOfLines = 0
        tutorialLabel.alpha = 0
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            print("complete")
            self.blackViewAnimation()
            
        }
       
    }
    
    func blackViewAnimation() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1)
            self.blackView.alpha = 1
        } completion: { _ in
         
        }

    }
   
    func animateImageView() {
        
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.starImageView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { _ in
            
        }

    }

   
}
