//
//  ViewController.swift
//  Nubank - Screen
//
//  Created by Luiz on 4/13/21.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var grettingLabel: UILabel!
    @IBOutlet weak var eyeLabel: UIButton!
    @IBOutlet weak var gearLabel: UIButton!
    @IBOutlet weak var messageScrollView: UIScrollView!
    @IBOutlet weak var messageStackView: UIStackView!

    @IBOutlet weak var actionScrollView: UIScrollView!
    @IBOutlet weak var actionStackView: UIStackView!

//    weak var messageView: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()

       let  messageView = instanceFromNib()
        let  messageView2 = instanceFromNib()
        let  messageView3 = instanceFromNib()
        let  messageView4 = instanceFromNib()

        let messageViewArray = [messageView, messageView, messageView2, messageView3, messageView4]

        messageViewArray.forEach({
            self.messageStackView.addArrangedSubview($0)
        })
        
    }

    func instanceFromNib() -> MessageView {
            let view = UINib(nibName: "MessageView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MessageView
            return view
    }
}

