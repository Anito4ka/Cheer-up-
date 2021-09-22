
import UIKit
import AVFoundation

class FairyTaleViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fairy1Button(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFirst", sender: self)
    }
    
    @IBAction func fairy2Button(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    @IBAction func fairy3Button(_ sender: UIButton) {
        performSegue(withIdentifier: "goToThird", sender: self)
    }
    
}
