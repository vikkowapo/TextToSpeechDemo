//
//  ConvertTextToSpeechWorker.swift
//  TextToSpeechDemo
//
//  Created by Vikko Taruc on 2/5/17.
//  Copyright © 2017 Vikko Taruc. All rights reserved.
//

import Foundation
import AVFoundation

class ConvertTextToSpeechWorker {
   fileprivate var speechSynthesizer: AVSpeechSynthesizer!
    fileprivate var utterance: AVSpeechUtterance!
    
    func speak(message: String){
        setupUtterance(message: message)
        speechSynthesizer = AVSpeechSynthesizer()
        speechSynthesizer.speak(utterance)
    }
    
    fileprivate func setupUtterance(message: String) {
        utterance = AVSpeechUtterance(string: message)
        utterance.pitchMultiplier = 0.5;
        utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
        utterance.preUtteranceDelay = 0.2;
        utterance.postUtteranceDelay = 0.2;
    }
}
