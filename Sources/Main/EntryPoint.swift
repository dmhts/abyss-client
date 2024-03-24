import Foundation
import ABIContractBreakerClient

@main
public struct EntryPoint {

    static public func main() {
        print(ABIContractBreakerClient.frozenRect())
        print(ABIContractBreakerClient.nonFrozenRect())
        print(ABIContractBreakerClient.frozenXYZElectricAuto())
        print(ABIContractBreakerClient.nonFrozenXYZElectricAuto())
        print(ABIContractBreakerClient.nonFinalAuto())
    }

}
