//
//  DraftViewController.swift
//  AgendaApp
//
//  Created by admin on 28/04/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DraftViewController: UIViewController {
    
    @IBOutlet weak var subContainerWidthContrant: NSLayoutConstraint!
    @IBOutlet weak var subContainerHeightContrant: NSLayoutConstraint!
    @IBOutlet weak var mainContainerBottomContrant: NSLayoutConstraint!

    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var scrView: UIScrollView!
    @IBOutlet weak var btnSaveDraft: UIButton!
    @IBOutlet weak var btnTimeDuration: UIButton!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblAgenda: UILabel!
    @IBOutlet weak var lblTimeDuration: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(DraftViewController.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(DraftViewController.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
        //navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "DRAFT"
        
        // Get main screen bounds
        let screenSize: CGRect = UIScreen.main.bounds
        
        subContainerWidthContrant.constant = screenSize.width
        subContainerHeightContrant.constant = screenSize.height - (self.navigationController?.navigationBar.frame.size.height)!-70
        
        self.view.layoutIfNeeded()
        
        txtField.setPlaceHolderTextColor(UIColor(hex: "#ffbe3e"))
        txtField.tintColor = UIColor(hex: "#ffbe3e")
        self.txtField.becomeFirstResponder()
        
        // To hide keyboard on touch anywhere
        self.hideKeyboard()

    }

    // Button action Save As Draft
    @IBAction func actionSaveAsDraft(_ sender: Any) {
        showErrorAlertWithTitle("Under Construction", message: "It will add agenda to coredata.")
    }
    
    // Button action add duration
    @IBAction func actionTimeDuration(_ sender: Any) {
        guard let text = self.txtField.text, !text.isEmpty else {
            showErrorAlertWithTitle("Enert Agenda", message: "")
            return
        }
        lblTimeDuration.textColor = UIColor.init(hex: "#ffbe3e")
        showErrorAlertWithTitle("Under Construction", message: "It will Show time selector.")
    }
    
    // Button action add new
    @IBAction func actionAddNew(_ sender: Any) {
        showErrorAlertWithTitle("Under Construction", message: "It will add new agenda.")
    }
}




