import Foundation

class Node<E> {
  let x: E
  let next: Node?

  init(x: E, next: Node?) {
    self.x = x
    self.next = next
  }
}

class List<E> {
  var head: Node<E>?

  func add(x: E) {
    let node = Node(x:x, next:head)
    head = node
  }

  func printAll() {
    var n = head
    while n != nil {
      print(n!.x)
      n = n!.next
    }
  }
}

func main() {
  let list = List <Int>()
  list.add(3)
  list.add(9)
  list.printAll()
}

main() // forgot to call main
