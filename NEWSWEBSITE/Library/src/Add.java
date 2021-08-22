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


public class Add extends JInternalFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JTextField textField;
	JTextField textField_1;
	JTextField textField_2;
	JTextField textField_3;
	
	JTextField textField_4;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Add frame = new Add();
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
	public Add() {
		setClosable(true);
		setResizable(true);
		setMaximizable(true);
		setIconifiable(true);
		setBounds(100, 100, 449, 303);
		getContentPane().setLayout(null);
		
		JLabel lblBid = new JLabel("Bid");
		lblBid.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblBid.setBounds(105, 32, 56, 16);
		getContentPane().add(lblBid);
		
		textField = new JTextField();
		textField.setBounds(181, 30, 116, 22);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		JLabel lblBname = new JLabel("Bname");
		lblBname.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblBname.setBounds(82, 67, 56, 16);
		getContentPane().add(lblBname);
		
		textField_1 = new JTextField();
		textField_1.setBounds(181, 65, 116, 22);
		getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		JLabel lblPublisher = new JLabel("Publisher");
		lblPublisher.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblPublisher.setBounds(62, 106, 76, 16);
		getContentPane().add(lblPublisher);
		
		textField_2 = new JTextField();
		textField_2.setBounds(181, 104, 116, 22);
		getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JLabel lblCategory = new JLabel("Category");
		lblCategory.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblCategory.setBounds(62, 141, 89, 22);
		getContentPane().add(lblCategory);
		
		textField_3 = new JTextField();
		textField_3.setBounds(181, 139, 116, 22);
		getContentPane().add(textField_3);
		textField_3.setColumns(10);
		
		JLabel lblQuantity = new JLabel("Quantity");
		lblQuantity.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblQuantity.setBounds(62, 176, 76, 16);
		getContentPane().add(lblQuantity);
		
		textField_4 = new JTextField();
		textField_4.setBounds(181, 174, 116, 22);
		getContentPane().add(textField_4);
		textField_4.setColumns(10);
		
		JButton btnSave = new JButton("SAVE");
		btnSave.addActionListener(new ActionListener() {
			

			

			

			public void actionPerformed(ActionEvent arg0) {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="insert into books values(?,?,?,?,?)";
					PreparedStatement st=cn.prepareStatement(query);
					st.setInt(1, Integer.parseInt(textField.getText()));
					st.setString(2,textField_1.getText());
					st.setString(3,textField_2.getText());
					st.setString(4,textField_3.getText());
					st.setInt(5, Integer.parseInt(textField_4.getText()));
					
					st.executeUpdate();
					cn.close();
                    JOptionPane.showMessageDialog(null, "Data Saved");
					
					textField.setText(" ");
					textField_1.setText(" ");
					textField_2.setText(" ");
					textField_3.setText(" ");
					textField_4.setText(" ");
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
			}
		});
		btnSave.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnSave.setBounds(191, 209, 97, 25);
		getContentPane().add(btnSave);
		
		JLabel lbl_res = new JLabel("");
		lbl_res.setBounds(201, 240, 76, 22);
		getContentPane().add(lbl_res);

	}
}
