//
//  ViewController.swift
//  yayPhil
//
//  Created by Jordan Kiley on 9/28/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.apiCall()
        createTextLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createTextLabel() {
        
        let date = getDate()
        let label = UITextView(frame: CGRect(x: 40, y: 40, width: (self.view.frame.width - 40), height: (view.frame.height * 0.25)))
        view.addSubview(label)
        label.text = "Today is\n\(date) and \nPhil Kessel \nis a\nPittsburgh Penguin"
        label.textAlignment = .center
        label.textColor = UIColor(red:1.00, green:0.84, blue:0.00, alpha:1.0)
//        label.font?.pointSize = 30
        label.font = UIFont.systemFont(ofSize: 20.0)
        label.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0)
        
    }
    
    func getDate() -> String {
//        let dateAsDate = Date()
//        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, yyyy"
        let dateAsString = formatter.string(from: Date())

        return dateAsString
    }
    
//    func apiCall() {
//        
//        let config = URLSessionConfiguration.default // Configure the session
//        let session = URLSession(configuration: config)
//        let url = URL(string: "https://api.twitter.com/1.1/statuses/user_timeline.json?count=5&user_id=389757150&screen_name=PKessel81&gvHcrP0XO3Plh5fpBX7Bhul7L=50dIPwmOjmJQc4qItFWOzAeVdG5Zc5JvLsnTG1fOErGMBzc07S")
//        
//        let task = session.dataTask(with: url!) { (data, response, error) in
//            if error != nil {
//                print(error?.localizedDescription)
//            } else {
//                do {
//                    if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any] {
//                        print(json)
//                        print("Yay Phil!")
//                    }
//                } catch {
//                    print(error)
//                }
//            }
//        }
//        task.resume()
//        
//    }

}

