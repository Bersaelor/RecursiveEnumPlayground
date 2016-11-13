import Foundation

public enum Tree<Element> {
    case leaf
    indirect case node(left: Tree<Element>, value: Element, right: Tree<Element>)
}
