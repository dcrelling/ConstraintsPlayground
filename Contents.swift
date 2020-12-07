//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
 


// Present the view controller in the Live View window
//let vc = MyViewController()
//PlaygroundPage.current.liveView = vc

class SecondViewController: UIViewController{

    public override func loadView() {
        let view = UIView()
        view.backgroundColor = .green
        self.view = view
    }

    public override func viewDidLoad() {

        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: 250, height: 500)
        container.backgroundColor = .red


        //Distance
        let label1 = UILabel()
//        label1.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        label1.text = "3.25"
        label1.font = label1.font.withSize(90)
        label1.textColor = .black
        label1.backgroundColor = .blue
        label1.translatesAutoresizingMaskIntoConstraints = false


        let spacing:CGFloat = 10
        //Unit
        let label2 = UILabel()
//        label2.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        label2.text = "mi"
        label2.font = label2.font.withSize(90)
        label2.textColor = .black
        label2.backgroundColor = .blue
        label2.translatesAutoresizingMaskIntoConstraints = false


        container.addSubview(label1)
        container.addSubview(label2)
        view.addSubview(container)

        print(container.bounds.width)
        if(label1.intrinsicContentSize.width + label2.intrinsicContentSize.width + spacing <= container.bounds.width){
            label1.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
            label2.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 10).isActive = true
        }else{
            label1.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
            label2.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 20).isActive = true
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 10).isActive = true
        }





    }

    public override func viewWillAppear(_ animated: Bool) {

    }

    public override func viewDidAppear(_ animated: Bool) {

    }
}

let vc = SecondViewController()
PlaygroundPage.current.liveView = vc
