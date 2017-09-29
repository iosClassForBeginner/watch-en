# Code Together: Let's make iPhone app in an hour

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/sample.gif" width="50%" height="50%"/></div>  

  Thank you for visiting our account. We are going to make a watch app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
We are providing free hands-on on a monthly basis

https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Development Environment
  Xcode 9 / Swift 3
  
  ・<a href="https://github.com/learn-co-students/reading-ios-intro-to-xcode-qa-public-001">What is Xcode?</a>

# Full procedure

## 0, Create your project

> 0-1. Open Xcode  
> 0-2. Select "Create a new Xcode project"  
> 0-3. Select "Single View Application" and then tap "Next"  
> 0-4. Fill "Product name" and then tap "Next"  
> 0-5. Select the place for saving your project and then tap "Create"  

## 1, Collect Resources

> 1-1. Drop your resource into your "Assets.xcassets"

Get resourse from [here](https://github.com/iosClassForBeginner/watch-en/blob/master/watch-en/Assets.xcassets/bg.imageset/bg.jpg) or you can get your favoirte image from [here](https://unsplash.com/)

## 2, Design your app (Optional)

#### 🗂 Main.storyboard

> 2-0. Add UIImageView in the storyboad
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/1.gif" /></div></details>

> 2-1. Set image, content mode and Autosizing
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/2.gif" /></div></details>

> 2-2. Add UILabel for displaying time
You can set text color depends on your background image.
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/3.gif" /></div></details>

> 2-3. Change Label attributes
You can set text color depends on your background image.
> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/4.gif" /></div></details>

* You can add date label too (It's a samme process from 2.2, 2.3).

## 4, Connect UI components on Storyboard to the classes

#### 🗂 Main.storyboard -> ViewController.swift

> 4-1. Connect Time lavel and date label to your "ViewController.swift"

★ control + drag in storyboard to create a control segue

> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/5.gif" /></div></details>

> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/6.gif" /></div></details>

> <details><summary>View Gif</summary><div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/watch-en/blob/master/sample/7.gif" /></div></details>

## 5, Add code blocks in ViewController.swift

★ It's preferable to write following code yourself. It will help you to understand code more.

```Swift
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
```
