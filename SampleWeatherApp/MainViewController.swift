//
//  MainViewController.swift
//  SampleWeatherApp
//
//  Created by Veeramani Ganesan on 01/09/21.
//  Copyright © 2021 Veeramani Ganesan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var cityName: UILabel?
    @IBOutlet var feelLike: UILabel?
    @IBOutlet var temperature: UILabel?
    @IBOutlet var weatherTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cityName?.text = "Edison"
        feelLike?.text = "Sunny"
        temperature?.text = "34"
        weatherTableView?.dataSource = self
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataSource().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherId") as? WeatherTableViewCell {
           // let dataSource = tableDataSource()
            cell.dayLabel?.text = tableDataSource()[indexPath.row].0
            cell.minLabel?.text = String(tableDataSource()[indexPath.row].1)
            cell.maxLabel?.text = String(tableDataSource()[indexPath.row].2)
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}

extension MainViewController {
    func tableDataSource() -> [(String, Int, Int)] {
        return [("Sun", 89, 45), ("Mon", 80, 45), ("Tues", 75, 45), ("Wed", 70, 45), ("Thur", 65, 45), ("Fri", 60, 45), ("Sat", 55, 45)]
    }
}

