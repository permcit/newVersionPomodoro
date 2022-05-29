import UIKit

class ViewController: UIViewController {
    
    static var color = UIColor.orange
    
    let pomodoroLabel: UILabel = {
        let label = UILabel()
        label.text = "Focus To-Do"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let shapeView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "circle")?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "05:00"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = color
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timerButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "play")?.withTintColor(color, renderingMode: .alwaysOriginal), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstrains()
        
    }
    
    func setupView() {
        view.backgroundColor = UIColor.white
    }
    
}

extension ViewController {
    
    func setConstrains() {
        
        view.addSubview(pomodoroLabel)
        NSLayoutConstraint.activate([
            pomodoroLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            pomodoroLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        view.addSubview(shapeView)
        NSLayoutConstraint.activate([
            shapeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shapeView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            shapeView.heightAnchor.constraint(equalToConstant: 320),
            shapeView.widthAnchor.constraint(equalToConstant: 320)
        ])
        
        shapeView.addSubview(timerLabel)
        NSLayoutConstraint.activate([
            timerLabel.topAnchor.constraint(equalTo: shapeView.topAnchor, constant: 80),
            timerLabel.centerXAnchor.constraint(equalTo: shapeView.centerXAnchor)
        ])
        
        view.addSubview(timerButton)
        NSLayoutConstraint.activate([
            timerButton.bottomAnchor.constraint(equalTo: shapeView.bottomAnchor, constant: -70),
            timerButton.centerXAnchor.constraint(equalTo: shapeView.centerXAnchor),
            timerButton.heightAnchor.constraint(equalToConstant: 50),
            timerButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
