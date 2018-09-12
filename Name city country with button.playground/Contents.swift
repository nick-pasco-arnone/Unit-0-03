// created by: Nick pasco-arnone
// created on: September 11
// created for: ICs3U
// daily assignment - unit - 03
// This program displays my name, city and country when clicked

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countylabel : UILabel = UILabel()
    let showtextbutton : UIButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.239215686917305, green: 0.674509823322296, blue: 0.968627452850342, alpha: 1.0)
        self.view = view
        
        cityLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        cityLabel.textAlignment = NSTextAlignment.center
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        nameLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        nameLabel.textAlignment = NSTextAlignment.center
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        
        countylabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        countylabel.textAlignment = NSTextAlignment.center
        view.addSubview(countylabel)
        countylabel.translatesAutoresizingMaskIntoConstraints = false
        countylabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        countylabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    
    showtextbutton.setTitle("Click Me", for: UIControlState.normal)
    showtextbutton.setTitleColor(.blue, for: .normal)
    showtextbutton.addTarget(self, action: #selector(showText), for: .touchUpInside)
    view.addSubview(showtextbutton)
    showtextbutton.translatesAutoresizingMaskIntoConstraints = false
    showtextbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    showtextbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
    }
    @objc func showText() {
        cityLabel.text = "Ottawa" 
        countylabel.text = "Canada"
        nameLabel.text = "Nick" }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
    
PlaygroundPage.current.liveView = ViewController()


