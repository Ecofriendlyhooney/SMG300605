package dao;

import java.security.Timestamp;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import beans.Skb;
import beans.Tse;

public class MainDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	/* ===== SKB =====*/ 
	public int save(Skb p) {
		String sql = "INSERT INTO skb_main"
				+ "(skb_event_title,"
				+ "skb_event_date,"
				
				+ "skb_event_start_time,"
				+ "skb_event_end_time,"
				+ "skb_event_text_01,"
				+ "skb_event_text_02,"
				+ "skb_event_text_03,"
				+ "skb_event_text_04,"
				+ "skb_event_text_05,"
				+ "skb_event_text_06,"
				+ "skb_event_text_07,"
				+ "skb_event_text_08,"
				+ "skb_event_text_09,"
				+ "skb_event_text_10,"
				+ "skb_event_flag"
				+ ") VALUES ('" 
				+ p.getSkb_event_title()      + "','"
				+ p.getSkb_event_date()       + "','"
				+ p.getSkb_event_start_time().substring(0,2) + p.getSkb_event_start_time().substring(3,5) + "00','"
				+ p.getSkb_event_end_time().substring(0,2) + p.getSkb_event_end_time().substring(3,5) + "00','"
				+ p.getSkb_event_text_01()    + "','"
				+ p.getSkb_event_text_02()    + "','"
				+ p.getSkb_event_text_03()    + "','"
				+ p.getSkb_event_text_04()    + "','"
				+ p.getSkb_event_text_05()    + "','"
				+ p.getSkb_event_text_06()    + "','"
				+ p.getSkb_event_text_07()    + "','"
				+ p.getSkb_event_text_08()    + "','"
				+ p.getSkb_event_text_09()    + "','"
				+ p.getSkb_event_text_10()    + "','"
				+ "ready"
				+ "')";
		//TODO need add more element filed
		return template.update(sql);
	}

	public int update(Skb p) {
		String sql = "update skb_main set "
				
				+ "skb_event_title='" 
				+ p.getSkb_event_title()      + "',"
				+ "skb_event_date='"
				+ p.getSkb_event_date()       + "',"
				+ "skb_event_start_time='"
				+ p.getSkb_event_start_time().substring(0,2) + p.getSkb_event_start_time().substring(3,5) + "00',"
				+ "skb_event_end_time='"
				+ p.getSkb_event_end_time().substring(0,2) + p.getSkb_event_end_time().substring(3,5) + "00',"
				+ "skb_event_text_01='" 
				+ p.getSkb_event_text_01()    + "',"
				+ "skb_event_text_02='" 
				+ p.getSkb_event_text_02()    + "',"
				+ "skb_event_text_03='" 
				+ p.getSkb_event_text_03()    + "',"
				+ "skb_event_text_04='" 
				+ p.getSkb_event_text_04()    + "',"
				+ "skb_event_text_05='" 
				+ p.getSkb_event_text_05()    + "',"
				+ "skb_event_text_06='" 
				+ p.getSkb_event_text_06()    + "',"
				+ "skb_event_text_07='" 
				+ p.getSkb_event_text_07()    + "',"
				+ "skb_event_text_08='" 
				+ p.getSkb_event_text_08()    + "',"
				+ "skb_event_text_09='" 
				+ p.getSkb_event_text_09()    + "',"
				+ "skb_event_text_10='" 
				+ p.getSkb_event_text_10() 
				
		+ "' where skb_event_id=" + p.getSkb_event_id();
		                           
		return template.update(sql);
	}

	public int logicDelete(Skb p) {
		String sql = "update skb_main "
				+ "set skb_event_flag='4'"
				+ "where skb_event_id=" + p.getSkb_event_id();                        
		return template.update(sql);
	}
	
	public int deleteSkb(int id) {
		String sql = "delete from skb_main where skb_event_id=" + id + "";
		return template.update(sql);
	}

	public Skb getSkbById(int id) {
		String sql = "select * from skb_main where skb_event_id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Skb>(Skb.class));
	}

	public List<Skb> getSkbSchedule() {
		return template.query("select * from skb_main where skb_event_flag='ready' order by skb_event_date asc", new RowMapper<Skb>() {
			public Skb mapRow(ResultSet rs, int row) throws SQLException {
				SimpleDateFormat simpleDateformat = new SimpleDateFormat("E"); 
				Skb e = new Skb();
				e.setSkb_event_id(rs.getInt(1));
				e.setSkb_event_title(rs.getString(2));
				e.setSkb_event_date(rs.getString(3).substring(5, 7) + "/"+rs.getString(3).substring(8,10));
				e.setSkb_event_day(simpleDateformat.format(rs.getDate(3)));
				e.setSkb_event_start_time(rs.getString(4).substring(0,2) + ":" + rs.getString(4).substring(3,5));
				e.setSkb_event_end_time(rs.getString(5).substring(0,2) + ":" + rs.getString(5).substring(3,5));
				e.setSkb_event_text_01(rs.getString(6));
				e.setSkb_event_text_02(rs.getString(7));
				e.setSkb_event_text_03(rs.getString(8));
				e.setSkb_event_text_04(rs.getString(9));
				e.setSkb_event_text_05(rs.getString(10));
				e.setSkb_event_text_06(rs.getString(11));
				e.setSkb_event_text_07(rs.getString(12));
				e.setSkb_event_text_08(rs.getString(13));
				e.setSkb_event_text_09(rs.getString(14));
				e.setSkb_event_text_10(rs.getString(15));
				
				return e;
			}
		});
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
    /* ===== TSE =====*/ 
	public int save(Tse p) {
		String sql = "insert into tse2019(name) values('" + p.getName() + "')";
		return template.update(sql);
	}

	public int update(Tse p) {
		String sql = "update tse2019 set name='" + p.getName() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int deleteTse(int id) {
		String sql = "delete from tse2019 where id=" + id + "";
		return template.update(sql);
	}

	public Tse getTseById(int id) {
		String sql = "select * from tse2019 where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Tse>(Tse.class));
	}

	public List<Tse> getTseSchedule() {
		return template.query("select * from tse2019", new RowMapper<Tse>() {
			public Tse mapRow(ResultSet rs, int row) throws SQLException {
				Tse e = new Tse();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				return e;
			}
		});
	}
}