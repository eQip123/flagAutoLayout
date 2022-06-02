import UIKit
import Foundation

class SecondViewController: UIViewController {
    var viewMain: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var viewRed: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var viewWhite: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var viewImage: UIImageView = {
        let viewImage = UIImageView()
        viewImage.image = UIImage(systemName: "star.fill")
        viewImage.tintColor = .systemGreen
        viewImage.translatesAutoresizingMaskIntoConstraints = false
        return viewImage
    }()
    private lazy var viewImage2: UIImageView = {
        let viewImage = UIImageView()
        viewImage.image = UIImage(systemName: "star.fill")
        viewImage.tintColor = .systemGreen
        viewImage.translatesAutoresizingMaskIntoConstraints = false
        return viewImage
    }()
    private lazy var viewSweden: UIView = {
        let viewSweden = UIView()
        viewSweden.translatesAutoresizingMaskIntoConstraints = false
        viewSweden.backgroundColor = .systemBlue
        return viewSweden
    }()
    private lazy var viewLine1: UIView = {
        let viewLine1 = UIView()
        viewLine1.translatesAutoresizingMaskIntoConstraints = false
        viewLine1.backgroundColor = .yellow
        return viewLine1
    }()
    private lazy var viewLine2: UIView = {
        let viewLine2 = UIView()
        viewLine2.translatesAutoresizingMaskIntoConstraints = false
        viewLine2.backgroundColor = .yellow
        return viewLine2
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(viewMain)
        view.addSubview(viewRed)
        view.addSubview(viewWhite)
        view.addSubview(viewImage)
        view.addSubview(viewImage2)
        view.addSubview(viewSweden)
        view.addSubview(viewLine1)
        view.addSubview(viewLine2)
        autolayout()
    }
    func autolayout () {
        viewMain.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        viewMain.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewMain.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewMain.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        viewRed.topAnchor.constraint(equalTo: viewMain.topAnchor).isActive = true
        viewRed.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor,constant: 0).isActive = true
        viewRed.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor,constant: 0).isActive = true
        viewRed.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor,constant: 0).isActive = true
        viewRed.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        viewWhite.topAnchor.constraint(equalTo: viewRed.bottomAnchor, constant: 0).isActive = true
        viewWhite.leadingAnchor.constraint(equalTo: viewMain.leadingAnchor, constant: 0).isActive = true
        viewWhite.trailingAnchor.constraint(equalTo: viewMain.trailingAnchor, constant: 0).isActive = true
        viewWhite.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        viewImage.centerYAnchor.constraint(equalTo: viewWhite.centerYAnchor, constant: 0).isActive = true
        viewImage.leadingAnchor.constraint(equalTo: viewWhite.leadingAnchor, constant: 70).isActive = true
        viewImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        viewImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewImage2.centerYAnchor.constraint(equalTo: viewWhite.centerYAnchor, constant: 0).isActive = true
        viewImage2.trailingAnchor.constraint(equalTo: viewWhite.trailingAnchor, constant: -70).isActive = true
        viewImage2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        viewImage2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewSweden.centerYAnchor.constraint(equalTo: viewMain.bottomAnchor, constant: 200).isActive = true
        viewSweden.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewSweden.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewSweden.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        viewLine1.leadingAnchor.constraint(equalTo: viewSweden.leadingAnchor, constant: 0).isActive = true
        viewLine1.centerYAnchor.constraint(equalTo: viewSweden.centerYAnchor, constant: 0).isActive = true
        viewLine1.widthAnchor.constraint(equalToConstant: 300).isActive = true
        viewLine1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        viewLine2.leadingAnchor.constraint(equalTo: viewSweden.leadingAnchor, constant: 100).isActive = true
        viewLine2.centerYAnchor.constraint(equalTo: viewSweden.centerYAnchor).isActive = true
        viewLine2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        viewLine2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
}

