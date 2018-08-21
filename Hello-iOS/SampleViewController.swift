import UIKit
import SnapKit
import RxSwift
import RxCocoa

class SampleViewController: UIViewController {
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        UILabel().apply { (this) in
            view.addSubview(this)
            this.font = .systemFont(ofSize: 15)
            this.backgroundColor = .black
            this.text = "test"
            this.textColor = .white
            this.textAlignment = .center
            this.clipsToBounds = true
            this.layer.cornerRadius = 20
            this.snp.makeConstraints { make in
                make.width.equalTo(150)
                make.height.equalTo(40)
                make.centerX.equalToSuperview()
                make.bottom.equalToSuperview().inset(40)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
