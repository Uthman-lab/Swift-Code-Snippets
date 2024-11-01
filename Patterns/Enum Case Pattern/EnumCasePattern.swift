import Foundation

enum TrafficLight {
    case red
    case yellow
    case green
}

let light = TrafficLight.green

switch light {
case .red:
    print("Stop")
case .yellow:
    print("Caution")
case .green:
    print("Go") // Will print "Go"
}
