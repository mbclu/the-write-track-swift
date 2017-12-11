import SpriteKit
@testable import writeTrack

class MockLaunchScene: LaunchScene, MockingJay {
    var invocations = [Invocation]()
    var expectedInvocations = [InvocationResult]()

    enum Functions: Selector {
        case track
    }

    override var track: SKNode? {
        return result(for: .track) as? SKNode
    }
}

fileprivate extension Selector {
    static let track = #selector(getter: LaunchScene.track)
}

