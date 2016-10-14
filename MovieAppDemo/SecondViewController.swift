//
//  SecondViewController.swift
//  MovieAppDemo
//
//  Created by 翁誠宏 on 2016/10/12.
//  Copyright © 2016年 Alpha Camp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var signatureText: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var noticeLabel: UILabel!
    
    var count = 1
    
    @IBAction func writeToTextField(_ sender: UIButton) {
        
        if signatureText.text?.isEmpty == true {
            noticeLabel.text = "簽名請勿空白"
            noticeLabel.isHidden = false
        } else if count > 3 {
            noticeLabel.text = "最多只能簽三個名字"
            noticeLabel.isHidden = false
        } else {
            noticeLabel.isHidden = true
            
            if textView.text.isEmpty == false {
                let myText  = textView.text!
                let newText = myText + "\n" + signatureText.text!
                textView.text = newText
            } else {
                textView.text = signatureText.text!
            }
            
            count += 1
        }
        signatureText.text = ""
        signatureText.resignFirstResponder()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signatureText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
