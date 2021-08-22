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


public class modify extends JInternalFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JTextField textField;
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
					modify frame = new modify();
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
	public modify() {
		setMaximizable(true);
		setClosable(true);
		setIconifiable(true);
		setBounds(100, 100, 450, 300);
		getContentPane().setLayout(null);
		
		JLabel lblBid = new JLabel("Bid");
		lblBid.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblBid.setBounds(58, 30, 56, 16);
		getContentPane().add(lblBid);
		
		JLabel lblBname = new JLabel("Bname");
		lblBname.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblBname.setBounds(29, 72, 56, 16);
		getContentPane().add(lblBname);
		
		JLabel lblPublisher = new JLabel("Publisher");
		lblPublisher.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblPublisher.setBounds(12, 113, 79, 16);
		getContentPane().add(lblPublisher);
		
		JLabel lblCategory = new JLabel("Category");
		lblCategory.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblCategory.setBounds(12, 154, 85, 20);
		getContentPane().add(lblCategory);
		
		JLabel lblQuantity = new JLabel("Quantity");
		lblQuantity.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblQuantity.setBounds(18, 200, 73, 16);
		getContentPane().add(lblQuantity);
		
		textField = new JTextField();
		textField.setEnabled(false);
		textField.setBounds(121, 26, 171, 27);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(120, 64, 172, 24);
		getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBounds(121, 101, 172, 27);
		getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		textField_3 = new JTextField();
		textField_3.setBounds(121, 147, 171, 27);
		getContentPane().add(textField_3);
		textField_3.setColumns(10);
		
		textField_4 = new JTextField();
		textField_4.setBounds(121, 194, 171, 30);
		getContentPane().add(textField_4);
		textField_4.setColumns(10);
		
		JButton btnNewButton = new JButton("MODIFY");
		btnNewButton.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="update books set Bname=?,Publisher=?,Category=?,Quantity=? where Bid=?";
					PreparedStatement st=cn.prepareStatement(query);
					st.setString(1,textField_1.getText());
					st.setString(2,textField_2.getText());
					st.setString(3,textField_3.getText());
					st.setInt(4, Integer.parseInt(textField_4.getText()));
					st.setInt(5, Integer.parseInt(textField.getText()));
					st.executeUpdate();
					cn.close();
					JOptionPane.showMessageDialog(null, "Data Updated");
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
				
			}
		});
		btnNewButton.setBounds(121, 231, 171, 27);
		getContentPane().add(btnNewButton);

	}
}
