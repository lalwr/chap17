package khj.chap17.board.model;

public class DeleteRequest {

	private int articleId;
	private String password;
	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getPassword(){
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
	}
}
