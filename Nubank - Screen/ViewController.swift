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

        let messageViewArray = [MessageView(),
                                MessageView(),
                                MessageView(),
                                MessageView(),
                                MessageView()]

        let actionViewArray = [ ActionView(),
                                ActionView(),
                                ActionView(),
                                ActionView(),
                                ActionView(),
                                ActionView(),
                                ActionView()]
        messageViewArray.forEach({ messageView in
            messageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                messageView.heightAnchor.constraint(equalToConstant: 160)])
            self.messageStackView.addArrangedSubview(messageView)
        })

        actionViewArray.forEach({ actionView in
            actionView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                                            actionView.heightAnchor.constraint(equalToConstant: actionScrollView.frame.height),
                                            actionView.widthAnchor.constraint(equalTo: actionView.heightAnchor, multiplier: 1)])
            self.actionStackView.addArrangedSubview(actionView)
        })
    }

//    func instanceFromNib() -> MessageView {
//            let view = UINib(nibName: "MessageView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MessageView
//            return view
//    }
}

