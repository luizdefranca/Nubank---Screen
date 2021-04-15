//
//  MessageViewController.swift
//  Nubank - Screen
//
//  Created by Luiz on 4/13/21.
//

import UIKit

class MessageView: UIView {

    @IBOutlet weak var creditcardImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!


    let nibName = "MessageView"

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }


    required init?(coder: NSCoder) {

        super.init(coder: coder)
        commonInit()
    }

    

    private func commonInit(){
//
////        let nib = UINib(nibName: "MessageView", bundle: nil)
////        nib.instantiate(withOwner: self, options: nil)
//        contentView.frame = bounds
//        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        addSubview(contentView)
//
////        Bundle.main.loadNibNamed("MessageView", owner: self, options: nil)
////        addSubview(contentView)
////        contentView.bounds = self.bounds
////        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)

        
    }



    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
