package khj.chap17.board.model;

public class ReplyingRequest extends WritingRequest {

	private int parentArticleId;
	
	public int getParentArticleId() {
		return parentArticleId;
	}
	
	public void setParentArticleId(int parentArticleId) {
		this.parentArticleId = parentArticleId;
	}
}
