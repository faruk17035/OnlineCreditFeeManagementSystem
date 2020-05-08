
package JDBC_Connection;

public class Student {
    String id;
    String name;
    String mobile;

    public Student() {
    }

    public Student(String id, String name, String mobile) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", mobile=" + mobile + '}';
    }
    
    
    
}
