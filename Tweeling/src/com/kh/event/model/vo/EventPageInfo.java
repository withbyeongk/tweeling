package com.kh.event.model.vo;

public class EventPageInfo {

    private int eventType;
    private int eventStatus;
    private int listCount;
    private int currentPage;
    private int pageLimit;
    private int boardLimit;
    private int maxPage;
    private int startPage;
    private int endPage;

    public EventPageInfo() {
        super();
    }

    public EventPageInfo(int eventType, int eventStatus, int listCount, int currentPage, int pageLimit, int boardLimit, int maxPage, int startPage,
            int endPage) {
        super();
        this.eventType = eventType;
        this.eventStatus = eventStatus;
        this.listCount = listCount;
        this.currentPage = currentPage;
        this.pageLimit = pageLimit;
        this.boardLimit = boardLimit;
        this.maxPage = maxPage;
        this.startPage = startPage;
        this.endPage = endPage;
    }

    public int geteventType() {
        return eventType;
    }

    public void seteventType(int eventType) {
        this.eventType = eventType;
    }

    public int geteventStatus() {
        return eventStatus;
    }

    public void seteventStatus(int eventStatus) {
        this.eventStatus = eventStatus;
    }

    public int getListCount() {
        return listCount;
    }

    public void setListCount(int listCount) {
        this.listCount = listCount;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageLimit() {
        return pageLimit;
    }

    public void setPageLimit(int pageLimit) {
        this.pageLimit = pageLimit;
    }

    public int getBoardLimit() {
        return boardLimit;
    }

    public void setBoardLimit(int boardLimit) {
        this.boardLimit = boardLimit;
    }

    public int getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(int maxPage) {
        this.maxPage = maxPage;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }


}
