//
//  ViewController.swift
//  Calculate It
//
//  Created by Simon Wilson on 26/02/2024.
//

import UIKit

class InitialScreenTableViewController: UIViewController {
    
    @IBOutlet var tableview: UITableView!
    
    var shapeArray: [BaseShape] = [
    
        Circle(shapeName: "Circle", icon: UIImage(named: "circle_icon")!),
        RightTriangle(shapeName: "Right Triangle", icon: UIImage(named: "right-triangle")!),
        ScaleneTriangle(shapeName: "Scalene Triangle", icon: UIImage(named: "scalene-triangle")!),
        EquilateralTriangle(shapeName: "Equilateral Triangle", icon: UIImage(named: "equilateral-triangle")!)
        
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.standardAppearance = customNavigationBar()
        navigationController?.navigationBar.compactAppearance = customNavigationBar()
        navigationController?.navigationBar.scrollEdgeAppearance = customNavigationBar()
        
    }
    
    func generateRandomColor(alpha: CGFloat) -> UIColor {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
        
        return randomColor
    }
    
    func generateShadow() -> NSShadow {
        
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.black
        shadow.shadowBlurRadius = 1
        shadow.shadowOffset = CGSize.init(width: 1, height: 1)
        
        return shadow
    }
    
    func customNavigationBar() -> UINavigationBarAppearance {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = generateRandomColor(alpha: 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white, .shadow: generateShadow()]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .shadow: generateShadow()]
        
        return appearance
        
    }
    
}

extension InitialScreenTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ShapeNameTableViewCell
        cell.backgroundColor = generateRandomColor(alpha: 0.5)
        cell.shapeLabel.text = shapeArray[indexPath.row].shapeName
        cell.shapeIcon.image = shapeArray[indexPath.row].icon
        return cell
    }
    
}



