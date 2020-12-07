import Foundation
import UIKit


public class MyViewController : UIViewController {
    public override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .green
        self.view = view
        
        //Stack View Constraints
        //let margin = view.layoutMarginsGuide
//        stack.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
//        stack.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
//        stack.widthAnchor.constraint(equalToConstant: stackHorizontalWidth).isActive = true
//        stack.heightAnchor.constraint(equalToConstant: stackHorizontalHeight).isActive = true
        
//        stack.leadingAnchor.constraint(equalTo: margin.leadingAnchor, constant: 20).isActive = true
//        stack.trailingAnchor.constraint(equalTo: margin.trailingAnchor, constant: -20).isActive = true
//        stack.topAnchor.constraint(equalTo: margin.topAnchor, constant: 20).isActive = true
//        stack.bottomAnchor.constraint(equalTo: margin.bottomAnchor, constant: 20).isActive = true
//        stack.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        stack.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    public override func viewDidLoad() {
        //Distance
        let label1 = UILabel()
        label1.text = "3.25"
        label1.font = label1.font.withSize(90)
        label1.textColor = .black
        label1.backgroundColor = .blue
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        //Unit
        let label2 = UILabel()
        label2.text = "mi"
        label2.font = label2.font.withSize(90)
        label2.textColor = .black
        label2.backgroundColor = .blue
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        //constants
        let stackHorizontalSpacing:CGFloat = 10
        let stackHorizontalWidth:CGFloat = 200
        let stackHorizontalHeight:CGFloat = 200
        
        //create that stack
        let stack = UIStackView()
        stack.backgroundColor = . red
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        //add stack to the view
        view.addSubview(stack)
        
        //add the stackview constraints
        stack.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
        stack.widthAnchor.constraint(equalToConstant: stackHorizontalWidth).isActive = true
        stack.heightAnchor.constraint(equalToConstant: stackHorizontalHeight).isActive = true
        
        //try to determine if the size of the labels given the intrinsic size would fit within the stack view horizonally if not use a verticle one
        if((label1.intrinsicContentSize.width + label2.intrinsicContentSize.width + stackHorizontalSpacing) <= stackHorizontalWidth){
            stack.axis = .horizontal
            stack.alignment = .center
            stack.distribution = .equalCentering
        }else{
            stack.axis = .vertical
            stack.alignment = .center
            stack.distribution = .equalCentering
        }
        
        print(UIScreen.main.bounds.width)
        print(label1.intrinsicContentSize.width)
        print(label2.intrinsicContentSize.width)
        

        //add the distanc and unit to the stack view could be horizontal or verticle
        stack.addArrangedSubview(label1)
        stack.addArrangedSubview(label2)
        

    }
    
    public override func viewWillAppear(_ animated: Bool) {
        print(view.bounds.width)
        print(view.subviews.first?.bounds.width ?? 0)

    }
    
    public override func viewDidAppear(_ animated: Bool) {

        print(view.bounds.width)
        print(view.subviews.first?.bounds.width ?? 0)

    }
    
}

