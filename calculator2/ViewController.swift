//
//  ViewController.swift
//  calculator2
//
//  Created by Thorbjorn on 8/28/21.
//

import UIKit
import FINNBottomSheet

class ViewController: UIViewController {

    @IBOutlet var sw: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }
    
    func showBottomSheet() {
        let transitioningDelegate = BottomSheetTransitioningDelegate(
            contentHeights: [.bottomSheetAutomatic, UIScreen.main.bounds.size.height - 200],
            startTargetIndex: 0
        )
        let viewController = UIViewController()
        viewController.transitioningDelegate = transitioningDelegate
        viewController.modalPresentationStyle = .custom

        present(viewController, animated: true)
        
        
    }
    @IBAction func info(_ sender: Any) {
        showBottomSheet()
        
    }
    
    func toastError(string:String){
        let error = UIAlertController(title: "!", message: string, preferredStyle: .alert)
        error.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(error, animated: true)
    }

}

