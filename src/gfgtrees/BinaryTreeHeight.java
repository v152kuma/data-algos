package gfgtrees;

import java.util.LinkedList;
import java.util.Queue;

public class BinaryTreeHeight {

    public int height(Node root){

        if(root == null) return 0;

        int leftHeight = height(root.left);
        int rightHeight = height(root.right);

        return Math.max(leftHeight, rightHeight) + 1;
    }

    public boolean isBalanced(Node root){

        //balanced tree = abs(leftHeight-rightheight) <=1
        if(root == null) return true;
        
        int lh = height(root.left);
        int rh = height(root.right);

        return (Math.abs(lh-rh)<=1 && isBalanced(root.left) && isBalanced(root.right));
    }

    public int maxWidthOftheTree(Node root){

        Queue<Node> queue = new LinkedList<>();

        queue.add(root);
        
        int max = Integer.MIN_VALUE;
        while(!queue.isEmpty())
        {
            int size = queue.size();

            max = Math.max(max, size);

            for(int i=0;i<size;i++){
                Node curr = queue.poll();
                if(curr.left!=null) queue.add(curr.left);
                if(curr.right!=null) queue.add(curr.right);
            }

        }
     return max;
    }

}
