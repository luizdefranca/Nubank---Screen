//
//  ActionView.swift
//  Nubank - Screen
//
//  Created by Luiz on 4/15/21.
//

import UIKit

class ActionView: UIView {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var actionLabel: UILabel!
    
    let nibName = "ActionView"
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit(){
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
