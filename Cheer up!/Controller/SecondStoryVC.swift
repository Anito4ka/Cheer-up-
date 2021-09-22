// SECOND


import UIKit
import AVFoundation

class SecondStoryVC: UIViewController{
    var audioPlayer = AVAudioPlayer()
    let story = StoryGarden()
    
    @IBOutlet weak var storyString: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    storyString.text = story.garden
        
        do {
            audioPlayer = try  AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "gardenLouder", ofType: "mp3")!))
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
