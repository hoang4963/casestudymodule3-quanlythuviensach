package models;

public class Role {
    protected int id;
    protected String roleid;
    protected String roleName;

    public Role() {
    }

    public Role(String roleid, String roleName) {
        this.roleid = roleid;
        this.roleName = roleName;
    }

    public Role(int id, String roleid, String roleName) {
        this.id = id;
        this.roleid = roleid;
        this.roleName = roleName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
