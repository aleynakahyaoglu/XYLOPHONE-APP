/*import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        print("aaa")
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.tag)
        
        
        playSound(soundName: "\(String(describing: sender.tag))")
        print("\(String(describing: sender.tag))")
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}*/
 //
 //  ViewController.swift
 //  Xylophone
 //
 //  Created by Angela Yu on 28/06/2019.
 //  Copyright © 2019 The App Brewery. All rights reserved.
 //
 import UIKit
 import AVFoundation

 class ViewController: UIViewController {
     
     var player: AVAudioPlayer!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
     }
     @IBAction func keyPressed(_ sender: UIButton) {
         
         playSound()
     }
     
     func playSound (){
         guard (Bundle.main.url(forResource: "E", withExtension: "wav") != nil) else
         {return}
         
         do {
             try AVAudioSession.sharedInstance().setCategory (.playback , mode:.default)
             try AVAudioSession.sharedInstance().setActive(true)
             
             player = try AVAudioPlayer(contentsOf: "url" ,fileTypeHint: AVFileType.mp3.rawValue)
             
             guard let player = player else {return}
             
             player.play()
             
         }catch let error {
             print (error.localizedDescription)
         }
     }
     
 }
     
    
}
