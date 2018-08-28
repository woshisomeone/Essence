package com.essence.pojo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: skylin
 * Date: 2018-07-25
 * Time: 下午8:01
 */
public class PageBean {
    private int currentPage;
    private int totalPage;
    private int pageSize;
    private int totalnum;
    public int getTotalnum() {
		return totalnum;
	}

	public void setTotalnum(int totalnum) {
		this.totalnum = totalnum;
	}

	private List<Goods> goods;

    public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

	public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

}
