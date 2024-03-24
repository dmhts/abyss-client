import Foundation
import ABIContractBreaker

public struct ABIContractBreakerClient {

    public static func frozenRect() -> FrozenShape   {
        FrozenShape.rect(w: 10, h: 10)
    }

    public static func nonFrozenRect() -> NonFrozenShape {
        NonFrozenShape.rect(w: 10, h: 10)
    }

    public static func frozenXYZElectricAuto() -> FrozenAuto {
        FrozenAuto(name: "XYZ", isElectric: true, maxSpeed: 192.45)
    }

    public static func nonFrozenXYZElectricAuto() -> NonFrozenAuto {
        NonFrozenAuto(name: "XYZ", isElectric: true, maxSpeed: 192.45)
    }

    public static func nonFinalAuto() -> NonFinalMyAuto {
        NonFinalMyAuto(name: "NonFinal", isElectric: true, maxSpeed: 192.45)
    }

}
