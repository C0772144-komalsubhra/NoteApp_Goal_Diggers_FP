import UIKit
import AVFoundation
class AudioCell: UICollectionViewCell {
    
    @IBOutlet weak var btnPlay: UIButton!
    var player: AVAudioPlayer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setAudio(player: AVAudioPlayer, fileURL: URL) {
        if fileURL != nil  {
            do{
                if let p = try? AVAudioPlayer(contentsOf: fileURL){
                    p.numberOfLoops = 1
                    self.player = p
//                    p.play()
                }
                
            } catch {    print(error)    }
            
        } else {
            print("Error: No file with specified name exists")
        }
    }

    @IBAction func onPlayAudio(_ sender: UIButton) {
        if let player = player {
            print("playing: ", player.isPlaying)
            if player.isPlaying {
                player.stop()
                btnPlay.setImage(UIImage(systemName: "play.fill"), for: .normal)
            }else{
                player.play()
                btnPlay.setImage(UIImage(systemName: "stop.fill"), for: .normal)
            }
        }
    }
}
