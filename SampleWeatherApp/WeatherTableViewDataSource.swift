//
//  WeatherTableViewDataSource.swift
//  SampleWeatherApp
//
//  Created by Veeramani Ganesan on 02/09/21.
//  Copyright © 2021 Veeramani Ganesan. All rights reserved.
//

import UIKit

class WeatherTableViewDataSource: UITableViewDataSource {
    
    init() {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherRestoreId") {
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}
