//
//  DeliveryStartNoticeView.swift
//  UberEats
//
//  Created by 이혜주 on 10/02/2019.
//  Copyright © 2019 team-b1. All rights reserved.
//

import UIKit

class DeliveryStartNoticeView: UIView {
    let deliveryStartLabel: UILabel = {
        let label = UILabel().setupWithFontSize(15)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

    let carImageView: UIImageView = {
        let imageView = UIImageView().initImageView("car")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        isHidden = true
        backgroundColor = .black
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5
        layer.zPosition = .greatestFiniteMagnitude

        addSubview(deliveryStartLabel)
        addSubview(carImageView)

        NSLayoutConstraint.activate([
            carImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            carImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            carImageView.widthAnchor.constraint(equalToConstant: buttonSize),
            carImageView.heightAnchor.constraint(equalToConstant: buttonSize),

            deliveryStartLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            deliveryStartLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            deliveryStartLabel.leadingAnchor.constraint(equalTo: carImageView.trailingAnchor, constant: 20)
            ])
    }

    func configure(delivererName: String) {
        deliveryStartLabel.text = "밖에서 " + delivererName + "님을 만날 준비를 하세요."
    }

}
