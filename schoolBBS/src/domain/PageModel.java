package domain;

import java.util.List;

public class PageModel<T> {
	private int pageIndex;
	private int pageSize;
	private int totalRecord;
	private List<T> list;
	public PageModel() {
		this.pageIndex=1;
	}
	public PageModel(int pageIndex, int pageSize, int totalRecord, List<T> list) {
		super();
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.totalRecord = totalRecord;
		this.list = list;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getTotalPage(){
		return (int)Math.ceil(1.0*this.totalRecord/this.pageSize);
	}
	public int getStart(){
		return this.pageIndex-2>0?this.pageIndex-2:1;
	}
	
	public int getEnd(){
		int start=this.getStart();
		int totalPage=this.getTotalPage();
		return start+4<totalPage?start+4:totalPage;
	}
}


