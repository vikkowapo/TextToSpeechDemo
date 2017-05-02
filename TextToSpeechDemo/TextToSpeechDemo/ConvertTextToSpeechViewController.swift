//
//  ConvertTextToSpeechViewController.swift
//  TextToSpeechDemo
//
//  Created by Vikko Taruc on 2/5/17.
//  Copyright © 2017 Vikko Taruc. All rights reserved.
//

import UIKit
protocol ConvertTextToSpeechViewControllerOutput {
    func speakMessage(request: ConvertTextToSpeech.Request.SpeakMessage)
}


class ConvertTextToSpeechViewController: UIViewController {
    
    var output: ConvertTextToSpeechViewControllerOutput!
    
    @IBOutlet weak var messageTextView: UITextView!
 
    
    @IBAction func convertMessageButtonTouched(_ sender: Any) {
        if let messageToConvert = messageTextView.text {
            let request = ConvertTextToSpeech.Request.SpeakMessage(message: messageToConvert)
            output.speakMessage(request: request)
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        ConvertTextToSpeechConfigurator.sharedInstance.configure(viewController: self)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
