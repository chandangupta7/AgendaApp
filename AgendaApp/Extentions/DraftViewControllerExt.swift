//
//  DraftViewController.swift
//  AgendaApp
//
//  Created by admin on 28/04/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

//Mark : UITextFieldDelegate Methods
extension DraftViewController : UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.view.layoutIfNeeded()
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        //self.checkValueExist()
        return false
    }

}

// Keyboard observer methods
extension DraftViewController {
    
    @objc func keyboardWillShow(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //self.mainContainerView.frame.origin.y -= keyboardSize.height
            print("botom space \(mainContainerBottomContrant.constant)")
            mainContainerBottomContrant.constant = keyboardSize.height
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        
        self.checkValueExist()
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            mainContainerBottomContrant.constant -= keyboardSize.height
            self.view.layoutIfNeeded()
        }
    }
    
    func checkValueExist() {
        guard let text = self.txtField.text, !text.isEmpty else {
            self.lblAgenda.text = ""
            self.lblAgenda.isHidden = true
            self.txtField.isHidden = false
            return
        }
        self.lblAgenda.text = text
        self.lblAgenda.isHidden = false
        self.txtField.isHidden = true
    }
}
