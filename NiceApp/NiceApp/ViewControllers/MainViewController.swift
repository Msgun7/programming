//
//  ViewController.swift
//  NiceApp
//
//  Created by Jaegeon Yeon on 2021/06/18.
//

import UIKit
import Lottie


class ViewController: UIViewController {

    let titleLAbel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        
        let animView = AnimationView(name: "15368-iron-man")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
    
        return animView
        
    }()
    
    
    
    //뷰가 생성되었을 때　ビュウーが作成された時
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        
        //애니메이션 실행 アニメ実行
        animationView.play{(finish) in
            //
            print("애니메이션이 끝났다.")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            self.view.addSubview(self.titleLAbel)
            
            self.titleLAbel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLAbel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLAbel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
    }


}

