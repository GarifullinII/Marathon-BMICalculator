//
//  ViewController.swift
//  BMICalculator
//
//  Created by Ildar Garifullin on 25/09/2024.
//

import UIKit
import SwiftUI

class CalculateViewController: UIViewController {
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "CALCULATE YOUR BMI"
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "Height"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let heightValueLabel: UILabel = {
        let label = UILabel()
        label.text = "1.75 m"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let heightSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 2.50
        slider.value = 1.5
        slider.minimumTrackTintColor = .specialBlue
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightValueLabel: UILabel = {
        let label = UILabel()
        label.text = "64 Kg"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 200
        slider.value = 50
        slider.minimumTrackTintColor = .specialBlue
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("CALCULATE", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold, width: .standard)
        button.layer.cornerRadius = 10
        button.tintColor = .specialWhite
        button.backgroundColor = .specialBlue
        button.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(mainLabel)
        view.addSubview(heightLabel)
        view.addSubview(heightValueLabel)
        view.addSubview(weightLabel)
        view.addSubview(weightValueLabel)
        view.addSubview(heightSlider)
        view.addSubview(weightSlider)
        view.addSubview(calculateButton)
    }
    
    @objc private func calculateButtonTapped() {
        print("CALCULATE")
    }
}

// MARK: -SetConstraints
extension CalculateViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
        NSLayoutConstraint.activate([
            heightValueLabel.trailingAnchor.constraint(equalTo: heightSlider.trailingAnchor),
            heightValueLabel.bottomAnchor.constraint(equalTo: heightSlider.topAnchor),
        ])
        NSLayoutConstraint.activate([
            heightLabel.leadingAnchor.constraint(equalTo: heightSlider.leadingAnchor),
            heightLabel.bottomAnchor.constraint(equalTo: heightSlider.topAnchor),
        ])
        NSLayoutConstraint.activate([
            heightSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            heightSlider.bottomAnchor.constraint(equalTo: weightLabel.topAnchor, constant: -10),
            heightSlider.widthAnchor.constraint(equalToConstant: view.frame.width/1.2)
        ])
        NSLayoutConstraint.activate([
            weightValueLabel.trailingAnchor.constraint(equalTo: weightSlider.trailingAnchor),
            weightValueLabel.bottomAnchor.constraint(equalTo: weightSlider.topAnchor),
        ])
        NSLayoutConstraint.activate([
            weightLabel.leadingAnchor.constraint(equalTo: weightSlider.leadingAnchor),
            weightLabel.bottomAnchor.constraint(equalTo: weightSlider.topAnchor),
        ])
        NSLayoutConstraint.activate([
            weightSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weightSlider.bottomAnchor.constraint(equalTo: calculateButton.topAnchor, constant: -20),
            weightSlider.widthAnchor.constraint(equalToConstant: view.frame.width/1.2)
        ])
        NSLayoutConstraint.activate([
            calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            calculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            calculateButton.widthAnchor.constraint(equalToConstant: view.frame.width/2)
        ])
    }
}

// MARK: -ViewControllerPreview
struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        VCPreview {CalculateViewController()}
    }
}
