package controller.board;

import model.board.BoardDAO;

public class Paging {
    private final static int pageCount = 5;
    private int blockStartNum = 0;
    private int blockLastNum = 0;
    private int lastPageNum = 0;

    public int getBlockStartNum() {
        return blockStartNum;
    }
    public void setBlockStartNum(int blockStartNum) {
        this.blockStartNum = blockStartNum;
    }
    public int getBlockLastNum() {
        return blockLastNum;
    }
    public void setBlockLastNum(int blockLastNum) {
        this.blockLastNum = blockLastNum;
    }
    public int getLastPageNum() {
        return lastPageNum;
    }
    public void setLastPageNum(int lastPageNum) {
        this.lastPageNum = lastPageNum;
    }

    // block�� ����
    // ���� �������� ���� block�� ���� ��ȣ, �� ��ȣ�� ���
    public void makeBlock(int curPage){
        int blockNum = 0;

        blockNum = (int)Math.floor((curPage-1)/ pageCount);
        blockStartNum = (pageCount * blockNum) + 1;
        blockLastNum = blockStartNum + (pageCount-1);
    }

    // �� �������� ������ ��ȣ
    public void makeLastPageNum() {
        BoardDAO dao = new BoardDAO();
        int total = dao.getCount();

        if( total % pageCount == 0 ) {
            lastPageNum = (int)Math.floor(total/pageCount);
        }
        else {
            lastPageNum = (int)Math.floor(total/pageCount) + 1;
        }
    }

}
