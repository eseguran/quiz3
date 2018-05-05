//
//  ViewController.swift
//  quiz3
//
//  Created by Eddy Segura on 5/5/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var preguntas = ["Programa usted en Java?", "Es Leningrado la capital de Rusia?", "Programa usted en Swift?", "Es la Paz la capital de Bolivia?", "Programa usted en Python?", "Bolivia tiene Mar?", "Programa usted en C++?", "Programa usted en Python?", "esto funciona?", "Programa usted en C#?", "Programa usted en PHP?", "Es de dia?", "sabe usted ingles?", "Sabe usted Aleman?", "Habla usted Italiano?", "Habla usted Ruso?", "tiene hambre?", "Conoce China?", "Le gusta la cerveza?", "Las rosas son rojas?"]
 
    var respuestas = [String]()
    var a = 1;
 
    @IBAction func no(_ sender: UIButton) {
        respuestas.append("no")
        if a < preguntas.count {
            label.text = preguntas[a];
            a = a+1;}
        if a == 20 {
            sender.isEnabled = false
            
        }
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func yes(_ sender: UIButton) {
        
        respuestas.append("Yes")
        if a < preguntas.count {
            label.text = preguntas[a];
            a = a+1;}
        if a == 20 {
            sender.isEnabled = false
            
            
        }
    }
    @IBAction func next(_ sender: UIButton) {
     
    
            label.text = preguntas[0];
        sender.setTitle("Resultados", for:[])
        sender.isEnabled = false;
 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

