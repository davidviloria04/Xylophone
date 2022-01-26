import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func keyPressed(_ sender: UIButton) {
        
        print(sender.currentTitle)
        playAudioFromProject()
    }
    
    func playAudioFromProject() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else {
            print("error to get the mp3 file")
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("audio file error")
        }
    }
}


