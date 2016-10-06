//
//  ViewController.swift
//  yayPhil
//
//  Created by Jordan Kiley on 9/28/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

import UIKit
import Foundation
import UserNotifications
import UserNotificationsUI

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBOutlet weak var philPicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        createTextLabel()
        dailyReminder()
        let center = UNUserNotificationCenter.current()
        center.delegate = self
//        center.
        center.requestAuthorization(options: .alert) { (granted, error) in
            if granted {
                print("YAY!")
            } else {
            print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func createTextLabel() {
        
        let date = getDate()
        let label = UITextView(frame: CGRect(x: 40, y: 40, width: (self.view.frame.width - 80), height: (view.frame.height * 0.25)))
        view.addSubview(label)
        label.text = "Today is\n\(date) and \nPhil Kessel \nis a\nPittsburgh Penguin"
        label.textAlignment = .center
        label.textColor = UIColor(red:1.00, green:0.84, blue:0.00, alpha:1.0)

        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 1, alpha: 0)
//        label.font = UIFont.
    }
    
    
    func getDate() -> String {
     
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, yyyy"
        let dateAsString = formatter.string(from: Date())

        return dateAsString
    }
    
    func dailyReminder() {
        let content = reminderText()
        let trigger = reminderTrigger()
        let notif = UNNotificationRequest.init(identifier: "alert", content: content, trigger: trigger)
        let center = UNUserNotificationCenter.current()
        center.add(notif) { (error) in
            print(error)
        }
        
    }
    
    func reminderText() -> UNNotificationContent {
        
        let date = getDate()
        let content = UNMutableNotificationContent()
        content.body = "Today is \(date) and Phil Kessel is a Pittsburgh Penguin!"
        return content
    }
    
    func reminderTrigger() -> UNTimeIntervalNotificationTrigger {
        return UNTimeIntervalNotificationTrigger.init(timeInterval: (60), repeats: true)
    }

}

