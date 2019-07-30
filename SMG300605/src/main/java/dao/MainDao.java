package dao;

import java.security.Timestamp;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
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
		String sql = "insert into skb_main"
				+ "(skb_event_title,"
				+ "skb_event_text_01,"
				+ "skb_event_text_02,"
				+ "skb_event_text_03"
				+ ") values('" 
				+ p.getSkb_event_title() + "','"
				+ p.getSkb_event_text_01() + "','"
				+ p.getSkb_event_text_02() + "','"
				+ p.getSkb_event_text_03()
				+ "')";
		//TODO need add more element filed
		return template.update(sql);
	}

	public int update(Skb p) {
		String sql = "update skb_main set "
				
				+ "skb_event_title='" 
				+ p.getSkb_event_title() + "',"
				+ "skb_event_text_01='" 
				+ p.getSkb_event_text_01() + "',"
				+ "skb_event_text_02='" 
				+ p.getSkb_event_text_02() + "',"
				+ "skb_event_text_03='" 
				+ p.getSkb_event_text_03() 
				//TODO need add more element filed
				
		+ "' where skb_event_id=" + p.getSkb_event_id();
		                                  

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
		return template.query("select * from skb_main", new RowMapper<Skb>() {
			public Skb mapRow(ResultSet rs, int row) throws SQLException {
				Skb e = new Skb();
				e.setSkb_event_id(rs.getInt(1));
				e.setSkb_event_title(rs.getString(2));
				e.setSkb_event_text_01(rs.getString(3));
				e.setSkb_event_text_02(rs.getString(4));
				e.setSkb_event_text_03(rs.getString(5));
							
//				e.setId(rs.getInt(1));
//				e.setName(rs.getString(2));
				
//				e.setEvent_schedule_id(rs.getInt(1));
//				e.setEvent_place_id(rs.getString(2));
//				e.setEvent_date(rs.getDate(3));
//				e.setEvent_time_start(rs.getTime(4));
//				e.setEvent_time_end(rs.getTime(5));
//				e.setEvent_schedule_delete_flag(rs.getString(6));
//				e.setEvent_schedule_text_01(rs.getString(7));
//				e.setEvent_schedule_text_02(rs.getString(8));
//				e.setEvent_schedule_text_03(rs.getString(9));
//				e.setEvent_schedule_text_04(rs.getString(10));
//				e.setEvent_schedule_text_05(rs.getString(11));
//				e.setEvent_schedule_text_06(rs.getString(12));
//				e.setEvent_schedule_text_07(rs.getString(13));
//				e.setEvent_schedule_text_08(rs.getString(14));
//				e.setEvent_schedule_text_09(rs.getString(15));
//				e.setEvent_schedule_text_10(rs.getString(16));
//				e.setCreated_timestamp(rs.getTimestamp(17));
//				e.setUpdated_timestamp(rs.getTimestamp(18));
//				e.setCreated_by(rs.getString(19));
//				e.setUpdated_by(rs.getString(20));
//				e.setEvent_view_count(rs.getInt(21));
//				e.setParticipants_yes(rs.getString(22));
//				e.setParticipants_no(rs.getString(23));
//				e.setParticipants_cancelled(rs.getString(24));

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