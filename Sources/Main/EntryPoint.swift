import Foundation
import ABIContractBreakerClient

@main
public struct EntryPoint {

    // ABIContractBreakerClient Implementation
    //
    // public struct ABIContractBreakerClient {
    //
    // public static func modifiedShape() -> Shape  {
    //    Shape.rect(w: 10, h: 10)
    // }
    // }
    static public func main() {
        // Must be: `Shape.rect(w: 10, h: 10)`
        // If it returns `circle(radius: 10)` it means the ABI contract was broken
        // and it blew up at run time.
        print(ABIContractBreakerClient.modifiedShape())
    }
}
