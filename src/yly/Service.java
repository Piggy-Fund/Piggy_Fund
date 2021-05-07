package yly;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import yly.entity.*;

//服务类，所有的业务逻辑
public class Service {

	// 获取数据库连接
	public static Connection getConnect() {

		// 1注册驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 2建立连接

			String url = "JDBC:mysql://localhost:3306/fund_data?useUnicode=true&characterEncoding=UTF-8";

			/*
			 * String user="root";
			 * 
			 * String password="123456";
			 */

			Connection conn = DriverManager.getConnection(url, "root", "123456");

			return conn;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (SQLException e) {
			System.out.println("数据库连接错误！！");

			e.printStackTrace();
		}
		return null;
	}

	// 管理员登录
	public static Administrator login_ad(String adname, String password) {

		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from administrator where adname='" + adname + "' and password='" + password + "' ";
//		System.out.print(sql1);
		List<Administrator> ads;
		try {
			ads = runner.query(conn, sql1, new BeanListHandler<Administrator>(Administrator.class));
			if (ads.size() > 0)
				return ads.get(0);
			else
				return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 用户注册 + 创建用户对应的基金仓库
	public static void addUser(String username, String password, String phonenum) {
		Connection conn = Service.getConnect();
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		// 插入用户
		String sql1 = "INSERT INTO `user` ( `username`, `password`, `phonenum`) VALUES ('" + username + "', '"
				+ password + "', '" + phonenum + "')";
		// 创建仓库
		String sql2 = "create table " + username + "(fundid text(10),fundname char(255),fundnum int(10))";
		try {
			runner.execute(conn, sql1);
			runner.execute(conn, sql2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 用户登录
	public static User login(String username, String password) {
		Connection conn = Service.getConnect();
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		String sql1 = "select * from user where username='" + username + "' and password='" + password + "' ";
		// System.out.print(sql1);
		List<User> users;
		try {
			users = runner.query(conn, sql1, new BeanListHandler<User>(User.class));
			if (users.size() > 0)
				return users.get(0);
			else
				return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 获取所有基金数据
	public static List<Fund> getAllFund() {
		// 获取数据库连接
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from fund";

		List<Fund> funds = new ArrayList<>();

		try {
			// 查询所有的用户数据，结果放入List<TUser>
			funds = runner.query(conn, sql1, new BeanListHandler<Fund>(Fund.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return funds;
	}

	// 基金自定义查询语句
	public static String searchsql(String fundtype, String top, String risklevel) {
		String sql1 = null;
		String x = "all";
		if (fundtype.equals(x) && risklevel.equals(x) && top.equals(x)) {
			sql1 = "Select * " + "From fund ";
		} else if (fundtype.equals(x) && risklevel.equals(x)) {
			sql1 = "Select * " + "From fund " + "order by dailygrowth desc limit " + top;
		} else if (fundtype.equals(x) && top.equals(x)) {
			sql1 = "Select * " + "From fund " + "Where risklevel = '" + risklevel + "' ";
		} else if (risklevel.equals(x) && top.equals(x)) {
			sql1 = "Select * " + "From fund " + "Where fundtype = '" + fundtype + "'";
		} else if (fundtype.equals(x)) {
			sql1 = "Select * " + "From fund " + "Where risklevel = '" + risklevel + "' "
					+ "order by dailygrowth desc limit " + top;
		} else if (top.equals(x)) {
			sql1 = "Select * " + "From fund " + "Where fundtype = '" + fundtype + "' and risklevel = '" + risklevel
					+ "' ";
		} else if (risklevel.equals(x)) {
			sql1 = "Select * " + "From fund " + "Where fundtype = '" + fundtype + "' "
					+ "order by dailygrowth desc limit " + top;
		} else {
			sql1 = "Select * " + "From fund " + "Where fundtype = '" + fundtype + "' and risklevel = '" + risklevel
					+ "' " + "order by dailygrowth desc limit " + top;
		}
		return sql1;
	}

	// 获取搜索基金数据
	public static List<Fund> getSearch(String sql1) {
		// 获取数据库连接
		Connection conn = Service.getConnect();
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		List<Fund> funds = new ArrayList<>();
		try {
			funds = runner.query(conn, sql1, new BeanListHandler<Fund>(Fund.class));
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return funds;
	}

	// 获取基金详细信息
	public static List<Fundinformation> getfundinfo(String id) {
		// 获取数据库连接
		Connection conn = Service.getConnect();
		String sql1 = "select * " + "from fundinfo " + "where id = '" + id + "'";
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		List<Fundinformation> info = new ArrayList<>();
		try {
			// 查询所有的用户数据，结果放入List<TUser>
			info = runner.query(conn, sql1, new BeanListHandler
					<Fundinformation>(Fundinformation.class));
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return info;
	}

	// 获取仓库信息
	public static List<Warehouse> getall(String username) {
		// 获取数据库连接
		Connection conn = Service.getConnect();
		String sql1 = "select * from " + username;
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		List<Warehouse> info = new ArrayList<>();
		try {
			// 查询所有的用户数据，结果放入List<Warehouse>
			info = runner.query(conn, sql1, new BeanListHandler<Warehouse>(Warehouse.class));
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return info;
	}

	// 搜索用户的基金仓库
	public static List<Warehouse> search(String username, String fundid) {
		// 获取数据库连接
		Connection conn = Service.getConnect();
		String sql1 = "select * from " + username;
		String sql2 = " where fundid = '" + fundid + "'";
		sql1 = sql1 + sql2;
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		List<Warehouse> info = new ArrayList<>();
		try {
			// 查询所有的用户数据，结果放入List<Warehouse>
			info = runner.query(conn, sql1, new BeanListHandler<Warehouse>(Warehouse.class));
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return info;
	}

	// 用户购买新基金，添加至仓库
	public static void addnew_warehouse(String username, 
			String fundid, String fundname, String num) {
		Connection conn = Service.getConnect();
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		// 插入基金
		String sql1 = "INSERT INTO `fund_data`.`" + username +
				"` (`fundid`, `fundname`, `fundnum`) VALUES ('" + fundid
				+ "', '" + fundname + "', '" + num + "')";
		try {
			runner.execute(conn, sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 用户购买已有基金 update
	public static void updatebuy_warehouse(String username, String fundid, String num) {
		Connection conn = Service.getConnect();
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		String sql1 = "Update " + username + " set fundnum = fundnum + " + num + " Where fundid = " + fundid;
		try {
			runner.execute(conn, sql1);
//			System.out.println(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 用户售出已有基金 update
	public static void updatesale_warehouse(String username, String fundid, String salenum) {
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "Update " + username + " set fundnum = fundnum - " + salenum + " Where fundid = " + fundid;
		String sql2 = "Delete From " + username + " Where fundnum = 0 ";
		try {
			runner.execute(conn, sql1);
			runner.execute(conn, sql2);
//			System.out.println(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 用户出售所有
	public static void deletesale_warehouse(String username, String fundid) {
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "Delete From " + username + " Where fundid =" + fundid;

		try {
			runner.execute(conn, sql1);
//				System.out.println(sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 获取帖子数据
	public static List<Tiezi> getall() {
		// 获取数据库连接
		Connection conn = Service.getConnect();
		String sql1 = "select * from tieba";
		// QueryRunner
		QueryRunner runner = new QueryRunner();

		List<Tiezi> ties = new ArrayList<>();

		try {
			// 查询所有的用户数据，结果放入List<TUser>
			ties = runner.query(conn, sql1, new BeanListHandler<Tiezi>(Tiezi.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ties;
	}

}
