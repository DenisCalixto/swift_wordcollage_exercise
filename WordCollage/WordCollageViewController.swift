//
//  WordCollageViewController.swift
//  WordCollage
//
//  Created by Denis Calixto on 9/16/19.
//  Copyright © 2019 Langara. All rights reserved.
//

import UIKit

class WordCollageViewController: UIViewController {
    
    
    @IBOutlet weak var bottomButton: UIButton!
    
    // MARK: - View Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Word Collage"
        bottomButton.setTitle("Next", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    
    
    @IBAction func bottomButtonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DetailExample", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //print(segue.identifier)
        if segue.identifier == "DetailExample" {
            print("detail view")
        }
        
        if let dest = segue.destination as? WordDetailViewController {
            print("destination is view controller")
            dest.isDetailView = false
        }
    }

}
