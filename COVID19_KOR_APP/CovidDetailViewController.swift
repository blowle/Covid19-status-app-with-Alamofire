//
//  CovidDetailViewController.swift
//  COVID19_KOR_APP
//
//  Created by YONGCHEOL LEE on 2021/11/18.
//

import UIKit

class CovidDetailViewController: UITableViewController {
    @IBOutlet weak var newCaseCell: UITableViewCell!
    @IBOutlet weak var totalCaseCell: UITableViewCell!
    @IBOutlet weak var recoveredCell: UITableViewCell!
    @IBOutlet weak var deathCell: UITableViewCell!
    @IBOutlet weak var percentageCell: UITableViewCell!
    @IBOutlet weak var overseasInflowCell: UITableViewCell!
    @IBOutlet weak var regionalOutbreakCell: UITableViewCell!
    
    var covidOverview: CovidOverview?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureView() {
        guard let covidOverview = covidOverview else { return }
        title = covidOverview.countryName
        newCaseCell.detailTextLabel?.text = "\(covidOverview.newCase)명"
        totalCaseCell.detailTextLabel?.text = "\(covidOverview.totalCase)명"
        recoveredCell.detailTextLabel?.text = "\(covidOverview.recovered)명"
        deathCell.detailTextLabel?.text = "\(covidOverview.death)명"
        percentageCell.detailTextLabel?.text = "\(covidOverview.percentage)%"
        overseasInflowCell.detailTextLabel?.text = "\(covidOverview.newFcase)명"
        regionalOutbreakCell.detailTextLabel?.text = "\(covidOverview.newCcase)명"
    }

}
