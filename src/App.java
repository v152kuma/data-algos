import gfgtrees.*;

public class App {

    public static void main(String[] args) {

        Node root = BuildTree.buildTree();
        
        //System.out.println(new BinaryTreeHeight().height(root));

        System.out.println(new BinaryTreeHeight().maxWidthOftheTree(root));
        

    }

}
