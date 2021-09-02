//  Bissmillah
//  ViewController.swift
//  kalkulator kak mora
//
//  Created by Ahmad Miftah Syakir on 25/03/21.
//  Temen gw horny ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temn gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen gw suka ama ayam,temen
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    
    @IBOutlet weak var Hasil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
   
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }
    
    func hitung(aritmatik: String) {
        if TextField1.text == "" || TextField2.text == "" {
        Hasil.text = "kolom tidak boleh kosong"
    }else{
        let input1 = Double(TextField1.text!)
        let input2 = Double(TextField2.text!)
        var hasil :  Double?
        
        switch aritmatik {
        case "+": hasil = input1! + input2!
        case "-": hasil = input1! - input2!
        case "*": hasil = input1! * input2!
        case "/": hasil = input1! / input2!
            
        default:
            break
        }
        Hasil.text = String(hasil!)
    }
  }
}

