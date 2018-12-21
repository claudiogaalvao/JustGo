//
//  ViewController.swift
//  leitorDeQr
//
//  Created by student on 08/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVCaptureMetadataOutputObjectsDelegate {
    
    
    @IBOutlet weak var square: UIImageView!
    var video  = AVCaptureVideoPreviewLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let session = AVCaptureSession()
        
        let captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        
        do {
            let input = try AVCaptureDeviceInput (device: captureDevice)
            session.addInput(input)
            
        }
            
        catch {
            
            print("Algo deu errado :/")
            
            
            
        }
        
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        output.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
        video = AVCaptureVideoPreviewLayer(session: session)
        video.frame = view.layer.bounds
        view.layer.addSublayer(video)
        self.view.bringSubview(toFront: square)
        session.startRunning()
        
    }
    
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [Any]!, from connection: AVCaptureConnection!) {
        
        if metadataObjects != nil && metadataObjects.count != 0
        {
            if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject
            {
                if object.type == AVMetadataObjectTypeQRCode
                {
                                        let alert = UIAlertController(title: "QR Code", message: object.stringValue, preferredStyle: .alert)
                                        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: nil))
                                        alert.addAction(UIAlertAction(title: "Go !", style: .default, handler: { action in
                                            self.performSegue(withIdentifier:"vaiProLeitorQR", sender: nil)
                                            UIPasteboard.general.string = object.stringValue
                                        }))
                    
                                        present(alert, animated: true, completion: nil)
                    
                }
            }
        }
    }
    
    
    
}

