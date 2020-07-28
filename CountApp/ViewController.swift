//
//  ViewController.swift
//  oppai
//
//  Created by イシガミ on 2020/07/27.
//  Copyright © 2020 イシガミ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Button: UIButton!
   // @IBOutlet weak var Button2: UIButton!
    var str = "0";
    var num = 0;
    let label = UILabel(frame: CGRect(x:100, y:100, width:200, height:200));
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ボタン
        /*
        let button = UIButton(type: UIButton.ButtonType.system)
        
        button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
       
        button.setTitle("K_Lag", for: UIControl.State.normal)

        // サイズを決める(自動調整)
        button.sizeToFit()

    
        // 位置を決める(画面中央)
        button.center = self.view.center

        // viewに追加する
        self.view.addSubview(button)
 
        */

        
        
        let button = UIButton(frame: CGRect(x: 200, y: 450, width: self.view.frame.width / 2 , height: self.view.frame.height / 4 ))
      
        
            
        button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
        
        button.backgroundColor = .black
        button.setTitle("コウシ", for: .normal)
        
        button.setTitleColor(.white, for: .normal)
         self.view.addSubview(button)

         
        let bu = UIButton(frame: CGRect(x: 0, y: 450, width: self.view.frame.width / 2 , height: self.view.frame.height / 4))
        bu.addTarget(self, action: #selector(buEvent(_:)), for: UIControl.Event.touchUpInside)
        
        bu.backgroundColor = .red
        bu.setTitle("タテイシ", for: .normal)
        
        bu.setTitleColor(.white, for: .normal)
         self.view.addSubview(bu)

               // 位置を決める(画面中央)
             //  button.center = self.view.center

               // viewに追加する
               self.view.addSubview(button)
        
        
        
        
        
        
        label.font = UIFont.systemFont(ofSize: 60)
        
        
        label.text = String(num);
        
        
        self.view.addSubview(label);
    }
    
    // ボタンが押された時に呼ばれるメソッド
    @objc func buttonEvent(_ sender: UIButton) {//ボタンが押された時に呼ばれる。
        
        //print("ボタンの情報: \(sender)")
        //print(num);
        
        num += 1;
        labeltext()
    }
    @objc func buEvent(_ sender: UIButton) {//ボタンが押された時に呼ばれる。
           
          // print("ボタンの情報: \(sender)")
          // print(num);
           
           num -= 1;
           labeltext()
       }
    
    func labeltext(){
        label.isHidden = true; // 隠す
        
        //label.font = UIFont.systemFont(ofSize: 80)
        label.text = String(num);
        self.view.addSubview(label);
        
        
        label.isHidden = false; //表示
        
    }
    

}
