//
//  ViewController.swift
//  calculator2
//
//  Created by Thorbjorn on 8/28/21.
//

import UIKit
import FINNBottomSheet

class ViewController: UIViewController {

    @IBOutlet var holder : UIView!
    @IBOutlet var textInput: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textInput.becomeFirstResponder()
       
    }
    
    //
    // Info button action
    @IBAction func infoButtonAction(_ sender: Any) {
        showBottomSheet()
    }
    
    //
    // Perform calculation and show result
    @IBAction func calculateAction(){
    
        do{
            let result = try Controller.calculate(mathString: textInput.text)
    
            textInput.text = String(Double(result!))
            
            //Setting cursor to LHS will display most significant values
            let newPosition = textInput.beginningOfDocument
            textInput.selectedTextRange = textInput.textRange(from: newPosition, to: newPosition)
    
        }
        catch{
            let e = "Parse or other string error"
            toastError(string: e)
            print(e)
        }
    }
    
    //
    // Create and show a info-card based on Finn.no BottomSheet
    func showBottomSheet() {
        let transitioningDelegate = BottomSheetTransitioningDelegate(
            contentHeights: [.bottomSheetAutomatic, UIScreen.main.bounds.size.height / 12],
            startTargetIndex: 1
        )
        
        let viewController = UIViewController()
    
        viewController.transitioningDelegate = transitioningDelegate
        viewController.modalPresentationStyle = .custom

        let view = UIView.makeView()
        
        viewController.view.backgroundColor = view.backgroundColor
        viewController.view.addSubview(view)
        
        //Constraints
        NSLayoutConstraint.activate([
                    view.topAnchor.constraint(equalTo: viewController.view.topAnchor),
                    view.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor),
                    view.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor),
                    view.heightAnchor.constraint(equalToConstant: 400),
                    view.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor)
                ])
        
        present(viewController, animated: true)
        
        
    }
    
    //
    // In case of error
    func toastError(string:String){
        let error = UIAlertController(title: "!", message: string, preferredStyle: .alert)
        error.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(error, animated: true)
    }

    
    
    
    
}

//
// UIView for bottom sheet
private extension UIView {
    static func makeView() -> UIView {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Made by Thorbjørn 2021"
        label.textAlignment = .center
        label.textColor = .black

        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        return view
    }
}
