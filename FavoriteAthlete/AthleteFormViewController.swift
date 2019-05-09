//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Soft Dev on 4/30/19.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTable"
    }
    
    var athlete: Athlete?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    func updateView() {
        if athlete != nil {
            let unwrappedAthlete = athlete!
            
            nameTextField.text = unwrappedAthlete.name
            ageTextField.text = String(unwrappedAthlete.age!)
            leagueTextField.text = unwrappedAthlete.league
            teamTextField.text = unwrappedAthlete.team
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = Int(ageTextField.text!),
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
/*        performSegue(withIdentifier: PropertyKeys.unwind, sender: self) */
        performSegue(withIdentifier: "UnwindToAthleteTable", sender: self)
    }
    
    
    

}
