//
//  ClubSquadViewController.swift
//  UEFA
//
//  Created by Mattia La Spina on 21/4/22.
//

import UIKit

class ClubSquadViewController: UIViewController{
    
    var themeColor = UIColor.black
    var headerImage = UIImage(named: "Header-2")
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var headerBackground: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTableView()
        
        segmentControlColors(themeColor)
        setImageHeaderBackground(headerImage!)
        setViewBackgoundColor(themeColor)
    }
    
 
    @IBAction func backButtonTouch(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

//MARK: Theme colors/images UI functions
extension ClubSquadViewController{
    
    func segmentControlColors(_ backgroundColor :UIColor) {
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        segmentControl.backgroundColor = backgroundColor
    }
    
    func setImageHeaderBackground(_ image :UIImage) {
        headerBackground.image = image
    }
    
    func setViewBackgoundColor(_ color :UIColor){
        self.view.backgroundColor = color
    }
    
}


//MARK: Static Functions with documentation
extension ClubSquadViewController {
    
    /// This function returns `ClubSquadViewController`
    /// ```
    ///  let viewController = ClubSquadViewController.instantiateClubSquadViewController()
    /// ```
    /// - Returns: ClubSquadViewController
    static func instantiateClubSquadViewController() -> ClubSquadViewController {
        return UIStoryboard(name: "ClubSquad", bundle: nil).instantiateInitialViewController() as! ClubSquadViewController
    }
    
    /// This function returns `ClubSquadViewController` with custom Themes
    /// ```
    ///  ClubSquadViewController.presentClubSquadViewControllerWithTheming(UIColor(named: "blue")!,UIImage(named: "Header")!,UIViewController)
    /// ```
    /// - Returns: ClubSquadViewController
    static func presentClubSquadViewControllerWithTheming(_ themeColor :UIColor, _ headerImage :UIImage, _ viewForPresent:UIViewController) {
        let viewController = self.instantiateClubSquadViewController()
        
        viewController.themeColor = themeColor
        viewController.headerImage = headerImage
        
        viewForPresent.present(viewController, animated: true, completion: nil)
    }
}
