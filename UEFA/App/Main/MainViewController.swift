//
//  MainViewController.swift
//  UEFA
//
//  Created by Mattia La Spina on 21/4/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func UCLButtonTouch(_ sender: Any) {
        let vc = UIStoryboard(name: "ClubSquad", bundle: nil).instantiateInitialViewController()
        self.present(vc!, animated: true, completion: nil)
    }
    
    @IBAction func UELButtonTouch(_ sender: Any) {
        let vc = UIStoryboard(name: "ClubSquad", bundle: nil).instantiateInitialViewController()
        self.present(vc!, animated: true, completion: nil)
    }
}
