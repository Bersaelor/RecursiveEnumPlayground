import Foundation

public enum Tree<Element: Comparable> {
    case leaf
    indirect case node(left: Tree<Element>, value: Element, right: Tree<Element>)
}
