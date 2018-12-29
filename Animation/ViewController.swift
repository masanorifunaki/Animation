//
//  ViewController.swift
//  Animation
//
//  Created by 舟木正憲 on 2018/12/29.
//  Copyright © 2018 masanori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(sender: UIButton) {
        // animate は UIView が持つクラスメソッド
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }

//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//            // 引数をち使わない時は _ を使う
//        }) { (_) in
//            // identity は元の位置に戻る
//            self.imageView.transform = CGAffineTransform.identity
//        }

//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//            // 引数をち使わない時は _ を使う
//        }) { (_) in
//            UIView.animate(withDuration: 1.0
//                , animations: {
//                    self.imageView.transform = CGAffineTransform.identity
//            })
//        }

        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveLinear, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
        }) { (_) in
            UIView.animate(withDuration: 1.0
              , animations: {
               self.imageView.transform = CGAffineTransform.identity
            })
        }

    }

}

