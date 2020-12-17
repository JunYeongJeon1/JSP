package cs.dit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.MemberDTO;

public class MemberDAO {
	private DataSource ds;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
//�깮�꽦�옄�뿉�꽌 jdbc/mvc 媛앹껜瑜� 李얠븘 DataSource 濡� 諛쏅뒗�떎.
	public MemberDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/JSP");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
//Connection �빐�젣瑜� �쐞�븳 硫붿냼�뱶
	public void close() {
		try {
			if(con !=null) {
				con.close();
				con=null;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
// �쟾泥� 硫ㅻ쾭 紐⑸줉蹂닿린	
	public ArrayList<MemberDTO> list(){
		String sql = "select * from board";
		
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();	//DB泥섎━ 寃곌낵瑜� MemberDTO�뿉 �떞�븘 ArrayList濡� 留뚮뱾湲� �쐞�빐
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {		//DB寃곌낵瑜� ResultSet�뿉�꽌 �븳�뻾�뵫 異붿텧�븯�뿬 MemberDTO濡� 留뚮뱺�떎.
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
				dtos.add(dto);		//MemberDTO媛앹껜瑜� ArrayList�뿉 異붽��븳�떎.
			}
			rs.close(); pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dtos;
	}

//硫ㅻ쾭 �긽�꽭 蹂닿린	
	public MemberDTO view(String id) {
		String sql ="select pwd, name, email, joinDate from board where id=?";
		MemberDTO dto = new MemberDTO();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {		//�긽�꽭蹂닿린瑜� �쐞�븳 �븳 �젅肄붾뱶�뀑�쓣 DTO�뿉 ���옣
				dto.setId(id);
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
			}
			
			rs.close();
			pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;	//DTO媛앹껜�뿉 �뜲�씠�꽣瑜� �떞�븘�꽌 諛섑솚
	}
	
// 硫ㅻ쾭 異붽��븯湲�
	public boolean insert(MemberDTO dto) {	//DB�뿉 ���옣�씠 �옒�릺硫� true, �옒�븞�릺�뿀�쑝硫�  false瑜� 諛섑솚
		String sql = "insert into board(id, pwd, name, email, joinDate) values(SEQ_ID.NEXTVAL,?,?,?, sysdate)"; 
		boolean check = false;
		try {  
			con = ds.getConnection();  //Connection媛앹껜 CP�뿉�꽌 �뼸�뼱�삤湲�
			pstmt =con.prepareStatement(sql);  	//Connection媛앹껜瑜� �넻�빐 SQL臾� 以�鍮�
			
			pstmt.setString(1, dto.getPwd());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getEmail());
			
			int x = pstmt.executeUpdate();	//SQL�쓣 �닔�뻾�븯怨� 寃곌낵 諛섑솚 : 寃곌낵�뒗 �엯�젰�씠 �맂 �뻾 媛��닔

			if(x<1) {	//1蹂대떎 �쟻�쑝硫�
				System.out.println("�젙�긽�쟻�쑝濡� ���옣�릺吏� �븡�븯�뒿�땲�떎.");
			}else {		//1�씠�긽�씤 寃쎌슦�뒗 ���옣�씠 �맂 寃쎌슦
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert �삤瑜� : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
// 硫ㅻ쾭 �젙蹂� �닔�젙�븯湲�	
	public boolean update(MemberDTO dto) {
		String sql = "update board set name=?, pwd=?, email=?, joinDate=? where id=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getEmail());
			pstmt.setDate(4, dto.getJoinDate());
			pstmt.setString(5, dto.getId());
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("�젙�긽�쟻�쑝濡� ���옣�릺吏� �븡�븯�뒿�땲�떎.");
			}else {
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert �삤瑜� : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
// 硫ㅻ쾭 �궘�젣 �븯湲�		
	public boolean delete(String id) {
		String sql = "delete from board where id=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("�젙�긽�쟻�쑝濡� �궘�젣�릺吏� �븡�븯�뒿�땲�떎.");
			}else {
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert �삤瑜� : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
}	
