package Model;

public class News {
    private  int id ;
    private  String name ;
    private  String description;

    private  String detail;
    private  String image ;
    Category category ;
    Users users ;


    public News() {
    }

    public News(int id, String name, String description, String detail, String image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.detail = detail;
        this.image = image;
    }

    public News(int id, String name, String description, String detail, String image, Category category, Users users) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.detail = detail;
        this.image = image;
        this.category = category;
        this.users = users;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }


}
