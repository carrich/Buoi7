//
//  ViewController.swift
//  bai7.1
//
//  Created by Ngoduc on 1/16/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ketqua: UILabel!
    @IBOutlet weak var wieght: UITextField!
    @IBOutlet weak var height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    @IBAction func test(_ sender: Any) {
         guard let heigh1 = height.text, let heigh2 = Double(heigh1) else {return}
        guard let wieght1 = wieght.text, let wieght2 = Double(wieght1) else {return}
        var bmi: Double = wieght2 / (heigh2 * heigh2)
        print(String(bmi))
        switch bmi {
        case _ where bmi < 18.5 :
            ketqua.text = "Thiếu cân"
        case _ where bmi >= 18.5 &&  bmi <= 22.99 :
        ketqua.text = "Bình thường"
        case _ where bmi >= 23 &&  bmi <= 24.99 :
        ketqua.text = "Thừa cân"
        case _ where bmi >= 25 &&  bmi <= 29.99 :
        ketqua.text = "Béo phì độ I"
        case _ where bmi >= 30 &&  bmi <= 39.99 :
        ketqua.text = "Béo phì độ II"
        case _ where bmi > 40 :
        ketqua.text = "Béo phì độ III"
        
        default:
            ketqua.text = "..."
        }
    }
    
}

