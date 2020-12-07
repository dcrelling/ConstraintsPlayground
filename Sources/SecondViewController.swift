import Foundation
import UIKit



class SecondViewController: UIViewController{
    
    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .red
        self.view = view
    }
    
    public override func viewDidLoad() {
        //Distance
        let label1 = UILabel()
        label1.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        label1.text = "3.25"
        label1.font = label1.font.withSize(90)
        label1.textColor = .black
        label1.backgroundColor = .blue
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        //Unit
        let label2 = UILabel()
        label2.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        label2.text = "mi"
        label2.font = label2.font.withSize(90)
        label2.textColor = .black
        label2.backgroundColor = .blue
        label2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        
    }
}
