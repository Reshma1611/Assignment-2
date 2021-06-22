//
//  ViewController.swift
//  Rosh-Assignment-2
//
//  Created by MacBook Pro on 21/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabel:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = "Registration"
        myLabel.textAlignment = .center
        
        return myLabel
    }()
    private let dobLabel:UILabel = {
        
        let myLabel = UILabel()
        myLabel.text = " Date of Birth"
        myLabel.textAlignment = .left
        myLabel.backgroundColor = .systemTeal
        myLabel.textColor = .darkText
        return myLabel
    }()
    
    private let myTextField:UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Enter Name"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.textColor = .black
        
        
        return textField
        
    }()
    
    private let mail:UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Enter Email"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.textColor = .black
        return textField
    }()
    

    private let password:UITextField = {
        
        let textField = UITextField()
        
        textField.placeholder = "Enter Password"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.textColor = .black
        
        return textField
    }()
    
    private let myPickerView = UIPickerView()
    private let pickerData = ["Male","Female"]

    private let myButton:UIButton = {
        
        let button = UIButton()
        button.setTitle("Registration", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(handleHomePage), for: .touchUpInside)
        
        return button
    }()
    
    @objc func handleHomePage() {
        let vc = HomePage()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        //present(nav, animated: false,completion: ()
        present(nav, animated: true) {
            
        }
    }
    
    private let dob: UIDatePicker = {
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        
        return datePicker
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myLabel)
        view.addSubview(myTextField)
        view.addSubview(mail)
        view.addSubview(password)
        view.addSubview(myButton)
        view.addSubview(myPickerView)
        view.addSubview(dob)
        view.addSubview(dobLabel)
        
        
        view.backgroundColor = .systemTeal
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 50 ,y:20, width: view.width - 80, height:40)
        myTextField.frame = CGRect(x: 50 , y: myLabel.bottom + 20, width: view.width - 100, height:40)
        mail.frame = CGRect(x: 50 , y: myTextField.bottom + 20, width: view.width - 100, height:40)
        password.frame = CGRect(x: 50 ,y: mail.bottom + 20, width: view.width - 100, height:40)
        myButton.frame = CGRect(x: 50 ,y: password.bottom + 20, width: view.width - 100, height:40)
        myPickerView.frame = CGRect(x: 120 ,y: myButton.bottom + 20, width: view.width - 250, height:100)
        dobLabel.frame = CGRect(x: 60 ,y: myPickerView.bottom + 20, width: 110, height:40)
        dob.frame = CGRect(x: 170 ,y: myPickerView.bottom + 20, width: view.width - 80, height:40)
        
    }
   	
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
}

