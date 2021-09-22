// THIRD


import UIKit
import AVFoundation

class ThirdStoryVC: UIViewController{
    var audioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var storyString: UILabel!
    let story = MyWords()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyString.text = story.myWords
        
        do {
            audioPlayer = try  AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mywords", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
                print("Playback OK")
                try AVAudioSession.sharedInstance().setActive(true)
                print("Session is Active")
            } catch {
                print(error)
            }
        }
        catch{
            print(error)
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }else{
            audioPlayer.play()
        }
            
    }
    
    
    
}

