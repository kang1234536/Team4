package model.user;

public class UserVO {
    private String userID;
    private String userPW;
    private String userName;
    private int userDiv;

    public UserVO() {
    }

    public UserVO(String userID, String userPW, String userName) {
        this.userID = userID;
        this.userPW = userPW;
        this.userName = userName;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserPW() { return userPW; }

    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getUserDiv() {
        return userDiv;
    }

    public void setUserDiv(int userDiv) {
        this.userDiv = userDiv;
    }
}
