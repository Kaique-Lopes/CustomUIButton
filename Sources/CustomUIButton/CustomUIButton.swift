import UIKit
 
public class CustomButton: UIButton {
    
    public enum ButtonStyle {
        case filled(UIColor)
        case outlined(UIColor)
    }
    
    public init(title: String, style: ButtonStyle, cornerRadius: CGFloat = 10, action: (() -> Void)? = nil) {
        self.action = action
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        layer.cornerRadius = cornerRadius
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        applyStyle(style)
        
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    private var action: (() -> Void)?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func applyStyle(_ style: ButtonStyle) {
        switch style {
        case .filled(let color):
            backgroundColor = color
            setTitleColor(.white, for: .normal)
        case .outlined(let color):
            backgroundColor = .clear
            layer.borderWidth = 2
            layer.borderColor = color.cgColor
            setTitleColor(color, for: .normal)
        }
    }
    
    @objc private func buttonTapped() {
        action?()
    }
}
