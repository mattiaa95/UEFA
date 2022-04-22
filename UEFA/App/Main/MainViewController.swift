//
//  MainViewController.swift
//  UEFA
//
//  Created by Mattia La Spina on 21/4/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func UCLButtonTouch(_ sender: Any) {
        ClubSquadViewController.presentClubSquadViewControllerWithTheming(UIColor(named: "blue")!,
                                                                          UIImage(named: "Header")!,
                                                                          self)
    }
    
    @IBAction func UELButtonTouch(_ sender: Any) {
        ClubSquadViewController.presentClubSquadViewControllerWithTheming(UIColor(named: "gray")!,
                                                                          UIImage(named: "Header-2")!,
                                                                          self)
    }
}
