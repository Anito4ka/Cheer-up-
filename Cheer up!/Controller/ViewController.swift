

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var inspiringQuote: UIImageView!
    @IBOutlet weak var gifView: UIImageView!
    
    let quotesArray = [#imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "12"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "6.png"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "breathe")]
 //   let photos2Array =
    let photosArray = [ #imageLiteral(resourceName: "2021-07-09 17.55.34.jpg"), #imageLiteral(resourceName: "2021-07-24 11.47.45"), #imageLiteral(resourceName: "2021-07-24 11.48.15"), #imageLiteral(resourceName: "2021-07-24 11.51.17"),  #imageLiteral(resourceName: "2021-07-24 11.51.22"), #imageLiteral(resourceName: "2021-07-24 11.51.25") , #imageLiteral(resourceName: "2021-07-24 11.51.29"), #imageLiteral(resourceName: "2021-07-24 11.51.32"), #imageLiteral(resourceName: "2021-07-24 11.51.35"), #imageLiteral(resourceName: "2021-07-24 11.51.38"), #imageLiteral(resourceName: "2021-07-24 11.51.43"), #imageLiteral(resourceName: "Снимок экрана 2021-05-23 в 14.37.39"), #imageLiteral(resourceName: "Снимок экрана 2021-06-25 в 20.14.02"), #imageLiteral(resourceName: "DFEQFxcgbfs"), #imageLiteral(resourceName: "2021-09-22 09.58.43"), #imageLiteral(resourceName: "2021-09-17 08.48.11"), #imageLiteral(resourceName: "2021-09-17 08.48.22"), #imageLiteral(resourceName: "2021-09-17 08.49.49"), #imageLiteral(resourceName: "2021-09-17 08.50.29"), #imageLiteral(resourceName: "2021-09-17 08.51.09"), #imageLiteral(resourceName: "2021-09-17 08.51.34"), #imageLiteral(resourceName: "2021-09-17 08.52.30"), #imageLiteral(resourceName: "2021-09-17 08.53.14"), #imageLiteral(resourceName: "2021-09-17 08.54.11"), #imageLiteral(resourceName: "2021-09-17 08.57.15"),  #imageLiteral(resourceName: "2021-09-17 08.57.28"), #imageLiteral(resourceName: "2021-09-17 09.03.11"), #imageLiteral(resourceName: "2021-09-17 09.05.07"), #imageLiteral(resourceName: "2021-09-17 09.06.08"),  #imageLiteral(resourceName: "2021-09-17 09.18.05"), #imageLiteral(resourceName: "2021-09-21 09.35.19") , #imageLiteral(resourceName: "2021-09-21 09.35.32"), #imageLiteral(resourceName: "Снимок экрана 2021-09-20 в 15.44.53"), #imageLiteral(resourceName: "IMG_0185"), #imageLiteral(resourceName: "IMG_0320"), #imageLiteral(resourceName: "IMG_0590"), #imageLiteral(resourceName: "IMG_0591"), #imageLiteral(resourceName: "IMG_0592"), #imageLiteral(resourceName: "IMG_0594"), #imageLiteral(resourceName: "IMG_0598"), #imageLiteral(resourceName: "IMG_0672"), #imageLiteral(resourceName: "IMG_0840"), #imageLiteral(resourceName: "IMG_0878"), #imageLiteral(resourceName: "IMG_0879"), #imageLiteral(resourceName: "IMG_1322"), #imageLiteral(resourceName: "IMG_7248"), #imageLiteral(resourceName: "IMG_7378"), #imageLiteral(resourceName: "IMG_7443"), #imageLiteral(resourceName: "IMG_7495"), #imageLiteral(resourceName: "IMG_7660"),  #imageLiteral(resourceName: "IMG_7852"), #imageLiteral(resourceName: "IMG_7895"), #imageLiteral(resourceName: "IMG_7995"), #imageLiteral(resourceName: "IMG_8167"),  #imageLiteral(resourceName: "IMG_8409"), #imageLiteral(resourceName: "IMG_8473") , #imageLiteral(resourceName: "IMG_8592"), #imageLiteral(resourceName: "IMG_9398"), #imageLiteral(resourceName: "IMG_9513"), #imageLiteral(resourceName: "IMG_9745"), #imageLiteral(resourceName: "IMG_9746"), #imageLiteral(resourceName: "photo_2021-09-21 10.26.36"), #imageLiteral(resourceName: "photo_2021-09-21 10.26.38"), #imageLiteral(resourceName: "photo_2021-09-21 10.26.40"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.11"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.13 (1)"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.13"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.14"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.15"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.16 (1)"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.16"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.17"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.18"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.20"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.21"),  #imageLiteral(resourceName: "photo_2021-09-21 10.27.22"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.23 (1)"), #imageLiteral(resourceName: "photo_2021-09-21 10.27.23"), #imageLiteral(resourceName: "2021-09-22 10.02.03"), #imageLiteral(resourceName: "2021-09-22 09.58.49"), #imageLiteral(resourceName: "2021-09-22 09.59.01"), #imageLiteral(resourceName: "2021-09-22 09.59.17"), #imageLiteral(resourceName: "2021-09-22 10.01.52"), #imageLiteral(resourceName: "2021-09-22 09.59.39") , #imageLiteral(resourceName: "2021-09-22 10.01.37")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifView.loadGif(name: "gif3")
        
        do {
            audioPlayer = try  AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "quiet", ofType: "mp3")!))
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
        inspiringQuote.image = quotesArray.randomElement()
        gifView.image = photosArray.randomElement()
    }
    
    @IBAction func buttonPlayPressed(_ sender: UIButton) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }else{
            audioPlayer.play()
        }
    }
 
    @IBAction func buttonMorePressed(_ sender: UIButton) {
    //perform segue
        performSegue(withIdentifier: "goToFairyTales", sender: self)
    }
    
    

}
/* 
 
 do {
     audioPlayer = try  AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "nausha", ofType: "mp3")!))
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
 */
