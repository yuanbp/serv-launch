package org.soft.launch.kernel.tools;

import java.util.List;

public class PageBean<T> {
    private long pageno;  //第几页
    private long pagesize; //每页条数
    private List<T> datas;
    private long totalno; //总共几页
    private long totalsize; //总的条数

    public PageBean(Integer pageno, Integer pagesize) {
        if(pageno<=0){
            this.pageno = 1;
        }else{
            this.pageno = pageno;
        }
        if(pagesize<=0){
            this.pagesize = 10;
        }else{
            this.pagesize = pagesize;
        }
        this.pageno = pageno;
        this.pagesize = pagesize;
    }

    public long getPageno() {
        return pageno;
    }

    public void setPageno(long pageno) {
        this.pageno = pageno;
    }

    public long getPagesize() {
        return pagesize;
    }

    public void setPagesize(long pagesize) {
        this.pagesize = pagesize;
    }

    public List getDatas() {
        return datas;
    }

    public void setDatas(List datas) {
        this.datas = datas;
    }

    public long getTotalno() {
        return totalno;
    }

    public void setTotalno(long totalno) {
        this.totalno = totalno;
    }

    public long getTotalsize() {
        return totalsize;
    }

    public void setTotalsize(long totalsize) {
        this.totalno = (totalsize%pagesize==0)?(totalsize/pagesize):(totalsize/pagesize+1);
        this.totalsize = totalsize;
    }

    /**
     * 开始索引
     */
    public long getStartIndex(){
        return (this.pageno-1)*this.pagesize;
    }


    @Override
    public String toString() {
        return "PageBean{" +
                "pageno=" + pageno +
                ", pagesize=" + pagesize +
                ", datas=" + datas +
                ", totalno=" + totalno +
                ", totalsize=" + totalsize +
                '}';
    }
}
