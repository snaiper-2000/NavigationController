//
//  SecondViewController.swift
//  Hello
//
//  Created by Admin on 15/07/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func cancel(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
    @IBAction func rename(_ sender: Any) {
        Model.labelHello = inputLabelNow.text!
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet var inputLabelNow: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Screen 2"
        inputLabelNow.text = Model.labelHello
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self,
                                                            action: #selector (rename(_:)))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self,
                                                           action: #selector (cancel(_:)))
        

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
