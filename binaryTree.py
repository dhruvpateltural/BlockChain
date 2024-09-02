class Node:
    """Represents a node in the binary tree."""
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

class BinaryTree:
    """Represents the binary tree itself."""
    def __init__(self):
        self.root = None

    def insert(self, value):
        """Inserts a new value into the binary tree."""
        if self.root is None:
            self.root = Node(value)
        else:
            self._insert_recursive(self.root, value)

    def _insert_recursive(self, current_node, value):
        """Recursively inserts a new value into the binary tree."""
        if value < current_node.value:
            if current_node.left is None:
                current_node.left = Node(value)
            else:
                self._insert_recursive(current_node.left, value)
        else:
            if current_node.right is None:
                current_node.right = Node(value)
            else:
                self._insert_recursive(current_node.right, value)

    def inorder_traversal(self):
        """Performs an inorder traversal of the binary tree and returns the values in ascending order."""
        result = []
        self._inorder_traversal_recursive(self.root, result)
        return result

    def _inorder_traversal_recursive(self, current_node, result):
        """Recursively performs an inorder traversal of the binary tree."""
        if current_node:
            self._inorder_traversal_recursive(current_node.left, result)
            result.append(current_node.value)
            self._inorder_traversal_recursive(current_node.right, result)

    def preorder_traversal(self):
        """Performs a preorder traversal of the binary tree and returns the values."""
        result = []
        self._preorder_traversal_recursive(self.root, result)
        return result

    def _preorder_traversal_recursive(self, current_node, result):
        """Recursively performs a preorder traversal of the binary tree."""
        if current_node:
            result.append(current_node.value)
            self._preorder_traversal_recursive(current_node.left, result)
            self._preorder_traversal_recursive(current_node.right, result)

    def postorder_traversal(self):
        """Performs a postorder traversal of the binary tree and returns the values."""
        result = []
        self._postorder_traversal_recursive(self.root, result)
        return result

    def _postorder_traversal_recursive(self, current_node, result):
        """Recursively performs a postorder traversal of the binary tree."""
        if current_node:
            self._postorder_traversal_recursive(current_node.left, result)
            self._postorder_traversal_recursive(current_node.right, result)
            result.append(current_node.value)

    def delete(self, value):
        """Deletes a value from the binary tree."""
        self.root = self._delete_recursive(self.root, value)

    def _delete_recursive(self, current_node, value):
        """Recursively deletes a value from the binary tree."""
        if current_node is None:
            return current_node

        if value < current_node.value:
            current_node.left = self._delete_recursive(current_node.left, value)
        elif value > current_node.value:
            current_node.right = self._delete_recursive(current_node.right, value)
        else:
            if current_node.left is None:
                return current_node.right
            elif current_node.right is None:
                return current_node.left

            min_value_node = self._find_min_value_node(current_node.right)
            current_node.value = min_value_node.value
            current_node.right = self._delete_recursive(current_node.right, min_value_node.value)

        return current_node

    def _find_min_value_node(self, current_node):
        """Finds the node with the minimum value in the binary tree."""
        while current_node.left is not None:
            current_node = current_node.left
        return current_node

# Example usage:
tree = BinaryTree()
tree.insert(1)
tree.insert(2)
tree.insert(7)
tree.insert(2)
tree.insert(9)
tree.insert(6)
tree.insert(0)



print("Inorder traversal:", tree.inorder_traversal())  # Output: [2, 3, 4, 5, 6, 7, 8]
print("Preorder traversal:", tree.preorder_traversal())  # Output: [5, 3, 2, 4, 7, 6, 8]
print("Postorder traversal:", tree.postorder_traversal())  # Output: [2, 4, 3, 6, 8, 7, 5]

tree.delete(4)
print("Inorder traversal after deletion:", tree.inorder_traversal())  # Output: [2, 3, 5, 6, 7, 8]