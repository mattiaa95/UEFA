//
//  ClubSquadViewController.swift
//  UEFA
//
//  Created by Mattia La Spina on 21/4/22.
//

import UIKit

class ClubSquadViewController: UIViewController{
    
    var players = ["Item 1", "Item2", "Item3", "Item4"]
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var headerBackground: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        segmentControlTextColor()
    }
    
    func segmentControlTextColor() {
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
    }
    
    @IBAction func backButtonTouch(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
