//
//  ViewController.swift
//  IBStylerDemo
//
//  Created by Emily Ivie on 9/17/16.
//  Copyright © 2016 urdnot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fieldPair1: IBFormFieldPair?
    @IBOutlet weak var fieldPair2: IBFormFieldPair?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        // dismissable keyboard
        fieldPair1?.fieldElement?.delegate = self
        fieldPair1?.fieldElement?.returnKeyType = .done
        fieldPair2?.fieldElement?.delegate = self
        fieldPair2?.fieldElement?.returnKeyType = .done
        super.viewDidLayoutSubviews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

