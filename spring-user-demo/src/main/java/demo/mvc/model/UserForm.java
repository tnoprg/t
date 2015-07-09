package demo.mvc.model;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;


import org.hibernate.validator.constraints.Range;


public class UserForm implements Serializable {
	/**
	 * Validation group for create user
	 */
	public static interface UserCreateGroup {
	}

	/**
	 * Validation group for update user
	 */
	public static interface UserUpdateGroup {
	}

	/**
	 * Validation group for delete user
	 */
	public static interface UserDeleteGroup {
	}

	/**
	 * serial version uid.
	 */
	private static final long serialVersionUID = 1L;

	@Null(groups = { UserCreateGroup.class })
	@NotNull(groups = { UserUpdateGroup.class, UserDeleteGroup.class })
	@Min(0)
	private Integer id;

	@Null(groups = { UserDeleteGroup.class })
	@NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class })
	@Size(min = 1, max = 20)
	private String stu_id;
	
	@Null(groups = { UserDeleteGroup.class })
	@NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class })
	@Size(min = 1, max = 50)
	private String name;

	@Null(groups = { UserDeleteGroup.class })
	@NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class })
	@Range(min=0,max=100)
	private Integer score;

	@Null(groups = { UserCreateGroup.class })
	@NotNull(groups = { UserUpdateGroup.class, UserDeleteGroup.class })
	@Min(0)
	private Integer version;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStu_id() {
        return stu_id;
    }

    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}


	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

}

