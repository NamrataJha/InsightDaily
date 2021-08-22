import java.awt.EventQueue;

import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;

import javax.swing.JTextField;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class issue extends JInternalFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					issue frame = new issue();
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
	public issue() {
		getContentPane().setFont(new Font("Tahoma", Font.BOLD, 16));
		setMaximizable(true);
		setIconifiable(true);
		setClosable(true);
		setBounds(100, 100, 655, 483);
		getContentPane().setLayout(null);
		
		JLabel lblBid = new JLabel("Bid");
		lblBid.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblBid.setBounds(154, 87, 56, 16);
		getContentPane().add(lblBid);
		
		textField = new JTextField();
		textField.setBounds(285, 86, 116, 22);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		JLabel lblCid = new JLabel("Cid");
		lblCid.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblCid.setBounds(154, 143, 56, 16);
		getContentPane().add(lblCid);
		
		textField_1 = new JTextField();
		textField_1.setBounds(285, 142, 116, 22);
		getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		JButton btnIssue = new JButton("ISSUE");
		btnIssue.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="insert into transactions values(?,?,?,?,?)";
					PreparedStatement st=cn.prepareStatement(query);
					st.setInt(1, Integer.parseInt(textField_2.getText()));
					st.setInt(2,Integer.parseInt(textField.getText()));
					st.setInt(3,Integer.parseInt(textField_1.getText()));
					st.setString(4,textField_3.getText());
					st.setString(5, textField_4.getText());
					
					st.executeUpdate();
					cn.close();
                    JOptionPane.showMessageDialog(null, "Data Saved");
					
					textField.setText(" ");
					textField_1.setText(" ");
					textField_2.setText(" ");
					textField_3.setText(" ");
					textField_4.setText(" ");
					
					getqty(textField_1.getText());
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
			}

			private void getqty(String bid) {
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
						st1.setInt(1,qty-1);
						st1.setString(2, bid);
					}
					cn.close();
				
				
				
				
			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
			}
			}
		});
		btnIssue.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnIssue.setBounds(298, 356, 97, 25);
		getContentPane().add(btnIssue);
		
		JLabel lblNewLabel = new JLabel("Tid");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblNewLabel.setBounds(154, 35, 56, 16);
		getContentPane().add(lblNewLabel);
		
		textField_2 = new JTextField();
		textField_2.setBounds(285, 34, 116, 22);
		getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JLabel lblIssueDate = new JLabel("   Issue Date");
		lblIssueDate.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblIssueDate.setBounds(71, 191, 116, 39);
		getContentPane().add(lblIssueDate);
		
		textField_3 = new JTextField();
		textField_3.setBounds(285, 201, 116, 22);
		getContentPane().add(textField_3);
		textField_3.setColumns(10);
		
		JLabel lblReturnDate = new JLabel("Return Date");
		lblReturnDate.setFont(new Font("Tahoma", Font.BOLD, 18));
		lblReturnDate.setBounds(71, 264, 126, 22);
		getContentPane().add(lblReturnDate);
		
		textField_4 = new JTextField();
		textField_4.setBounds(285, 266, 116, 22);
		getContentPane().add(textField_4);
		textField_4.setColumns(10);

	}
}
