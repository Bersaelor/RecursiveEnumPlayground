import Foundation

extension Tree: CustomStringConvertible, CustomDebugStringConvertible {
    
    /// A textual representation of `self`.
    public var description: String {
        switch self {
        case .leaf:
            return "🍁"
        case let .node(left, value, right):
            return left.description + String(describing: value) + right.description
        }
    }
    
    /// A textual representation of `self`, suitable for debugging.
    public var debugDescription: String {
        switch self {
        case .leaf:
            return "🍁"
        case let .node(left, value, right):
            return "{\(left.debugDescription)-\(String(describing: value))-\(right.debugDescription)}"
        }
    }
}
