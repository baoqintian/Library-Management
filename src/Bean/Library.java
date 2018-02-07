package Bean;

/**
 * Created by zgf on 2018/2/4.
 * 功能Bean类，模拟层提供获取属性和设置属性的方法get/set方法
 */
public class Library {
    private String id;//ID
    private String name;//名称
    private String author;//作者
    private String date;//日期
    private String price;//价格
    private String inventory;//库存

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
