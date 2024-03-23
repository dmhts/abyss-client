import Foundation
import ABIContractBreakerClient

@main
public struct EntryPoint {

    static public func main() {
        // Should be: Shape.rect(w: 10, h: 10)
        print(ABIContractBreakerClient.modifiedShape())

        print("Hey 123")
    }
}
