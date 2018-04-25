//
//  ViewController.swift
//  CantoDict
//
//  Created by Brian MacPherson on 22/4/2018.
//  Copyright © 2018 Brian MacPherson. All rights reserved.
//

import UIKit
import ChameleonFramework

class TabViewController: UIViewController {
    
    
    var wordOfTheDayController: UIViewController!
    var searchController: UIViewController!
    var favoritesController: UIViewController!
    var menuController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set background color to gradient
        self.view.backgroundColor = UIColor(gradientStyle:UIGradientStyle.topToBottom, withFrame:self.view.frame, andColors:[UIColor.flatWhite(),UIColor.flatWatermelon()])
        
        //Instantiate the View Controllers
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        wordOfTheDayController = storyboard.instantiateViewController(withIdentifier: "WordOfTheDayController")
        searchController = storyboard.instantiateViewController(withIdentifier: "SearchController")
        favoritesController = storyboard.instantiateViewController(withIdentifier: "FavoritesController")
        menuController = storyboard.instantiateViewController(withIdentifier: "MenuController")
        
        viewControllers = [wordOfTheDayController, searchController, favoritesController, menuController]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //Action for tab buttons
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].isSelected = false
        let previousVC = viewControllers[previousIndex]
        
        //Remove previous VC
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //Show new VC
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    
    //Outlet for content view
    @IBOutlet weak var contentView:
        UIView!
    
    //Outlet for buttons
    @IBOutlet var buttons: [UIButton]!
    
    
    
    
    
    
}


