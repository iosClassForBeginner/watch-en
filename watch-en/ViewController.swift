//
//  ViewController.swift
//  watch-en
//
//  Created by Wataru Maeda on 2017/09/28.
//  Copyright © 2017 Wataru Maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var dateLabel: UILabel!
  @IBOutlet var timeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Set current date
    dateLabel.text = getDateString()
    
    // Timer start
    let timer = Timer.scheduledTimer(
      timeInterval: 1.0,
      target: self,
      selector: #selector(updateTime),
      userInfo: nil,
      repeats: true
    )
    timer.fire()
  }
  
  func getDateString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM, dd"
    return formatter.string(from: Date())
  }
  
  @objc func updateTime() {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm:ss"
    
    // Set current time
    timeLabel.text = formatter.string(from: Date())
  }
}

