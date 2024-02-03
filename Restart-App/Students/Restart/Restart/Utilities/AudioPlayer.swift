//
//  AudioPlayer.swift
//  Restart
//
//  Created by Karthik Palusa on 2/3/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        } catch {
            print("Could not play the sound file.")
        }
    }
}
