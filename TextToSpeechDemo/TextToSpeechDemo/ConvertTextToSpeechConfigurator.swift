//
//  ConvertTextToSpeechConfigurator.swift
//  TextToSpeechDemo
//
//  Created by Vikko Taruc on 2/5/17.
//  Copyright © 2017 Vikko Taruc. All rights reserved.
//

import Foundation

extension ConvertTextToSpeechInteractor: ConvertTextToSpeechViewControllerOutput{
    
}

class ConvertTextToSpeechConfigurator {
    static let sharedInstance = ConvertTextToSpeechConfigurator()
    
    private init () {}
    
    func configure(viewController: ConvertTextToSpeechViewController){
        let interactor = ConvertTextToSpeechInteractor()
        viewController.output = interactor
    }
}
