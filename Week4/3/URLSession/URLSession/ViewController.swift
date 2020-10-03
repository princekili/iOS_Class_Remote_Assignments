//
//  ViewController.swift
//  URLSession
//
//  Created by prince on 2020/10/2.
//

import UIKit

struct StationDataJSON: Codable {
    let stationID, stationName, stationAddress: String
}


class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStationData(completionHandler: { StationDataJSON in
            self.stationIDLabel.text = StationDataJSON.stationID
            self.stationNameLabel.text = StationDataJSON.stationName
            self.stationAddressLabel.text = StationDataJSON.stationAddress
        })
    }
    
    
    func getStationData(completionHandler: @escaping (StationDataJSON) -> Void) {
        
//        let url = URL(string: "http://www.json-generator.com/api/json/get/cfetebnznm?indent=0")!
        guard let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data,
               let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                
                do {
                    let decoder = JSONDecoder()
                    let parsedJSON = try decoder.decode(StationDataJSON.self, from: data)
                    DispatchQueue.main.async {
                        completionHandler(parsedJSON)
                    }
                } catch {
                    print("Error info: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}
