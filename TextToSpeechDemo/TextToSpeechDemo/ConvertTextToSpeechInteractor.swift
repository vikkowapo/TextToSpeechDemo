//
//  ConvertTextToSpeechInteractor.swift
//  TextToSpeechDemo
//
//  Created by Vikko Taruc on 2/5/17.
//  Copyright © 2017 Vikko Taruc. All rights reserved.
//

import Foundation

protocol ConvertTextToSpeechInteractorInput {
    func speakMessage(request: ConvertTextToSpeech.Request.SpeakMessage)
}

class ConvertTextToSpeechInteractor: ConvertTextToSpeechInteractorInput {
    let converter = ConvertTextToSpeechWorker()
    
    func speakMessage(request: ConvertTextToSpeech.Request.SpeakMessage) {
        print("Convert this: \(request.message!)")
        converter.speak(message: request.message)
    }
}
