//
//  LoginFormViewController.swift
//  VKLite
//
//  Created by mac on 25.04.2021.
//

import UIKit
import Foundation

class LoginFormViewController: UIViewController {
    
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var loginTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
               // Присваиваем его UIScrollVIew
               scrollView?.addGestureRecognizer(hideKeyboardGesture)    }

    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    
}
    
    @objc func hideKeyboard() {
            self.scrollView?.endEditing(true)
        }

    // Когда клавиатура появляется
@objc func keyboardWasShown(notification: Notification) {
        
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    @IBAction func Login(_ sender: Any) {
        print("button pressed")
        if loginTextField.text == "admin" && passwordTextField.text == "123"{
        print("login success")} else {
    print("login error")}
    }
    @IBAction func registration(_ sender: Any) {
        print("button 2 pressed")
    }
    
}
