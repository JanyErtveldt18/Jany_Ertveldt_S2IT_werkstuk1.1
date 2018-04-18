//
//  ImageViewController.swift
//  Werkstuk1_Jany_Ertveldt
//
//  Created by Jany Ertveldt on 31/03/18.
//  Copyright © 2018 Jany Ertveldt. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var tempImage:String?
    @IBOutlet weak var imageGroot: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageGroot.image = UIImage(named: tempImage!)
        // Do any additional setup after loading the view.
        
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
