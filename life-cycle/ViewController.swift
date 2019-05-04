//
//  ViewController.swift
//  life-cycle
//
//  Created by Денис Сидоренко on 03/05/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("First view controller \(#function)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First view controller \(#function)")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First view controller \(#function)")
    }
    
    
    override func updateViewConstraints() {
        print("First view controller \(#function)")
        super.updateViewConstraints()
    }
    
    
    override func viewWillLayoutSubviews() {
        print("First view controller \(#function)")
    }
    
    
    override func viewDidLayoutSubviews() {
        print("First view controller \(#function)")
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("First view controller \(#function)")
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("First view controller \(#function)")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Second view controller \(#function)")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Second view controller \(#function)")
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "GoToSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            if let dvc = segue.destination as? SecondViewController {
                dvc.property = "property"
            }
        }
    }
}

