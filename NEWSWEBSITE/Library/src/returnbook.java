import java.awt.EventQueue;

import javax.swing.JInternalFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import java.awt.BorderLayout;

import javax.swing.JLabel;

import java.awt.Font;

import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;


public class returnbook extends JInternalFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					returnbook frame = new returnbook();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public returnbook() {
		getContentPane().setFont(new Font("Tahoma", Font.BOLD, 14));
		setClosable(true);
		setMaximizable(true);
		setIconifiable(true);
		setBounds(100, 100, 450, 300);
		getContentPane().setLayout(null);
		
		JLabel lblTid = new JLabel("Tid");
		lblTid.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblTid.setBounds(111, 47, 56, 22);
		getContentPane().add(lblTid);
		
		textField = new JTextField();
		textField.setBounds(191, 49, 116, 22);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		JButton btnReturn = new JButton("RETURN");
		btnReturn.addActionListener(new ActionListener() {
			private Date d1;
			private Date d2;
			private Date d3;
			

			public void actionPerformed(ActionEvent arg0) {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query1="insert into returns values (?,?,?,?)";
					PreparedStatement st1=cn.prepareStatement(query1);
					st1.setInt(1,Integer.parseInt(textField.getText()));
					st1.setInt(2,Integer.parseInt(textField_1.getText()));
					st1.setInt(3,Integer.parseInt(textField_2.getText()));
					st1.setString(4, textField_3.getText());
					st1.executeUpdate();
					String query="select Issue_Date,Return_date from transactions where Tid=?,Bid=?,Cid=?";
					PreparedStatement st=cn.prepareStatement(query);
					st.setInt(1,Integer.parseInt(textField.getText()));
					st.setInt(2,Integer.parseInt(textField_1.getText()));
					st.setInt(3,Integer.parseInt(textField_2.getText()));
					ResultSet rs=st.executeQuery();
					if(rs.next())
					{
						d1 = rs.getDate("Issue_Date");
						d2 = rs.getDate("Return_Date");
						
						
					}
					String query2="select Returning_date from returns where Tid=?,Bid=?,Cid=?";
					PreparedStatement st2=cn.prepareStatement(query2);
					st2.setInt(1,Integer.parseInt(textField.getText()));
					st2.setInt(2,Integer.parseInt(textField_1.getText()));
					st2.setInt(3,Integer.parseInt(textField_2.getText()));
					ResultSet rs1=st2.executeQuery();
					if(rs1.next())
					{
						
						d3 = rs1.getDate("Returning_Date");
						
						
					}
				
				 if((d2.compareTo(d3)>0)||(d2.compareTo(d3)==0))
				 {
					 JOptionPane.showMessageDialog(null, "not a defaulter");
				 }
				 else
				 {
					 JOptionPane.showMessageDialog(null,"defaulter");
					 JOptionPane.showMessageDialog(null, "Amount to be paid");
					 
				 }
					 
					setqty(textField_1.getText());
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
			}

			private void setqty(String bid) {
				// TODO Auto-generated method stub
				int qty=0;
				try{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="select Quantity from books where Bid=?";
					PreparedStatement st=cn.prepareStatement(query);
					st.setString(1, bid);
					ResultSet rs=st.executeQuery();
					if(rs.next())
					{
						qty=rs.getInt("Quantity");
					}
					if(qty>0)
					{
						String query1="update books set Quantity=? where Bid=? ";
						PreparedStatement st1=cn.prepareStatement(query1);
						st1.setInt(1,qty+1);
						st1.setString(2, bid);
					}
					cn.close();
				
				
				
				
			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
			}
			}
		});
		btnReturn.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnReturn.setBounds(191, 237, 114, 25);
		getContentPane().add(btnReturn);
		
		JLabel lblBid = new JLabel("Bid");
		lblBid.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblBid.setBounds(111, 102, 56, 16);
		getContentPane().add(lblBid);
		
		textField_1 = new JTextField();
		textField_1.setBounds(191, 101, 116, 22);
		getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblCid = new JLabel("Cid");
		lblCid.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblCid.setBounds(111, 157, 56, 16);
		getContentPane().add(lblCid);
		
		textField_2 = new JTextField();
		textField_2.setBounds(191, 156, 116, 22);
		getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JLabel lblReturningdate = new JLabel("Returning_Date");
		lblReturningdate.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblReturningdate.setBounds(12, 201, 137, 22);
		getContentPane().add(lblReturningdate);
		
		textField_3 = new JTextField();
		textField_3.setBounds(191, 202, 116, 22);
		getContentPane().add(textField_3);
		textField_3.setColumns(10);

	}
}
