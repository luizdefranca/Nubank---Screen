//
//  jjj.swift
//  Nubank - Screen
//
//  Created by Luiz on 4/13/21.
//


import UIKit
class ResuableCustomView: UIView {

    let nibName = "ReusableCustomView"
    var contentView: UIView?

    @IBOutlet weak var label: UILabel!
    @IBAction func buttonTap(_ sender: UIButton) {
        label.text = "Hi"
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
