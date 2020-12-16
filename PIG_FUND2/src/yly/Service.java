package yly;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import yly.entity.*;

//�����࣬���е�ҵ���߼�
public class Service {

	// ��ȡ���ݿ�����
	public static Connection getConnect() {

		// 1ע������
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 2��������

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
			System.out.println("���ݿ����Ӵ��󣡣�");

			e.printStackTrace();
		}
		return null;
	}

	// �û�ע��
	public static void addUser(String username, String password, String phonenum) {

		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "INSERT INTO `user` ( `username`, `password`, `phonenum`) VALUES ('" + username + "', '"
				+ password + "', '" + phonenum + "')";
		try {
			runner.execute(conn, sql1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// �û���¼
	public static TUser login(String username, String password) {

		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from user where username='" + username + "' and password='" + password + "' ";
		// System.out.print(sql1);
		List<TUser> users;
		try {
			users = runner.query(conn, sql1, new BeanListHandler<TUser>(TUser.class));
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

	// ��ȡ���л�������
	public static List<Fund> getAllFund() {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from fund";

		List<Fund> funds = new ArrayList<>();

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			funds = runner.query(conn, sql1, new BeanListHandler<Fund>(Fund.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return funds;
	}
	//��ѯ���
	public static String searchsql(String fundtype,String top,String risklevel) {
		String sql1=null;
		String x = "all";
		if(fundtype.equals(x) && risklevel.equals(x)&& top.equals(x)) {
			sql1 = "Select * " + 
					"From fund ";
		}
		else if(fundtype.equals(x) && risklevel.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"order by dailygrowth desc limit "+ top;
		}
		else if(fundtype.equals(x) && top.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"Where risklevel = '" + risklevel+ "' ";
		}
		else if(risklevel.equals(x) && top.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"Where fundtype = '" + fundtype +"'";
		}
		else if(fundtype.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"Where risklevel = '" + risklevel+ "' "+
					"order by dailygrowth desc limit "+ top;
		}
		else if(top.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"Where fundtype = '" + fundtype + "' and risklevel = '" + risklevel+ "' ";
		}
		else if(risklevel.equals(x)) {
			sql1 = "Select * " + 
					"From fund "+
					"Where fundtype = '" + fundtype +"' "+
					"order by dailygrowth desc limit "+ top;
		}
		else {
			sql1 = "Select * " + 
					"From fund "+
					"Where fundtype = '" + fundtype + "' and risklevel = '" + risklevel+ "' "+
					"order by dailygrowth desc limit "+ top;
		}
		
		return sql1;
	}
// dailygrowth ǰ20 ������ charge����
//	Select * 
//	From fund
//	where id in (
//			SELECT t.id
//			from (select id from fund order by dailygrowth desc limit 20 )as t
//	)order by charge desc
	// ��ȡ������������
	public static List<Fund> getSearch(String sql1) {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();
		
		// QueryRunner
		QueryRunner runner = new QueryRunner();
		
		List<Fund> funds = new ArrayList<>();
		
		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			funds = runner.query(conn, sql1, new BeanListHandler<Fund>(Fund.class));
//			funds.sort(new Comparator<Fund>() {
//
//				@Override
//				public int compare(Fund o1, Fund o2) {
//					// TODO Auto-generated method stub
//					return o1.getId().compareTo(o2.getId());
//				}
//			});
			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return funds;
	}

	// ��ȡ������ϸ��Ϣ
	public static List<Fundinformation> getfundinfo(String id) {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();
		String sql1 = "select * "
					+ "from fundinfo "
					+ "where id = '"+id+"'";
		// QueryRunner
		QueryRunner runner = new QueryRunner();

		List<Fundinformation> info = new ArrayList<>();

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			info = runner.query(conn, sql1, new BeanListHandler<Fundinformation>(Fundinformation.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return info;
	}

		
	// ��ȡ��������
	public static List<Tiezi> getall() {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();
		String sql1 = "select * from tieba";
		// QueryRunner
		QueryRunner runner = new QueryRunner();

		List<Tiezi> ties = new ArrayList<>();

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			ties = runner.query(conn, sql1, new BeanListHandler<Tiezi>(Tiezi.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ties;
	}

	// ��ȡ�����û�����
	public static List<TUser> getAllUser() {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from user";

		List<TUser> users = new ArrayList<>();

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			users = runner.query(conn, sql1, new BeanListHandler<TUser>(TUser.class));

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	// ģ����ѯ�û�
	public static List<TUser> queryUser(String key) {
		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		key = "%" + key + "%";

		String sql1 = "select * from user where username like ? or major like ?";

		List<TUser> users = new ArrayList<>();

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			users = runner.query(conn, sql1, new BeanListHandler<TUser>(TUser.class), key);

			DbUtils.closeQuietly(conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	// ����id��ȡ�û�
	public static TUser getUserById(int id) {

		// ��ȡ���ݿ�����
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql1 = "select * from user where id=?";

		List<TUser> users;

		try {
			// ��ѯ���е��û����ݣ��������List<TUser>
			users = runner.query(conn, sql1, new BeanListHandler<TUser>(TUser.class), id);

			DbUtils.closeQuietly(conn);

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

	// ������־
	public static void newLog(String ip, Date vistTime, String uri) {
		Connection conn = Service.getConnect();

		// QueryRunner
		QueryRunner runner = new QueryRunner();

		String sql = "insert into log(ip,vistTime,uri) valuse(?,?,?)";

		try {
			runner.execute(conn, sql, ip, vistTime, uri);

			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
