//
//  delay.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** delay: Simple audio delay - Add a delay to an incoming signal with optional feedback.
     - Parameter feedback: Feedback amount. (Default: 0.0, Minimum: 0.0, Maximum: 1.0)
     - Parameter delayTime: Delay time, in seconds. (Default: 1.0, Minimum: 0.0, Maximum: 10.0)
     */
    public mutating func delay(time time: Float = 1.0, feedback: AKOperation = 0.0.ak) {
        self = self.delayed(time: time, feedback: feedback)
    }
    
    /** delayed: Simple audio delay - Add a delay to an incoming signal with optional feedback.
     - returns: AKOperation
     - Parameter feedback: Feedback amount. (Default: 0.0, Minimum: 0.0, Maximum: 1.0)
     - Parameter delayTime: Delay time, in seconds. (Default: 1.0, Minimum: 0.0, Maximum: 10.0)
     */
    public func delayed(
        time time: Float = 1.0,
        feedback: AKOperation = 0.0.ak
        ) -> AKOperation {
            return AKOperation("\(self)\(feedback)\(time)delay")
    }
}