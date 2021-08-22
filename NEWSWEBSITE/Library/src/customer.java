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


public class customer extends JInternalFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					customer frame = new customer();
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
	public customer() {
		setClosable(true);
		setMaximizable(true);
		setIconifiable(true);
		setBounds(100, 100, 450, 300);
		getContentPane().setLayout(null);
		
		JLabel lblCid = new JLabel("Cid");
		lblCid.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblCid.setBounds(63, 37, 56, 16);
		getContentPane().add(lblCid);
		
		JLabel lblCname = new JLabel("Cname");
		lblCname.setFont(new Font("Tahoma", Font.BOLD, 22));
		lblCname.setBounds(31, 99, 88, 27);
		getContentPane().add(lblCname);
		
		JLabel lblPhno = new JLabel("Ph.No.");
		lblPhno.setFont(new Font("Tahoma", Font.BOLD, 22));
		lblPhno.setBounds(31, 161, 88, 27);
		getContentPane().add(lblPhno);
		
		textField = new JTextField();
		textField.setBounds(127, 22, 200, 50);
		getContentPane().add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setBounds(127, 87, 200, 50);
		getContentPane().add(textField_1);
		textField_1.setColumns(10);
		
		textField_2 = new JTextField();
		textField_2.setBounds(127, 152, 200, 50);
		getContentPane().add(textField_2);
		textField_2.setColumns(10);
		
		JButton btnAddCustomer = new JButton("ADD CUSTOMER");
		btnAddCustomer.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="insert into customers values(?,?,?)";
					PreparedStatement st=cn.prepareStatement(query);
					st.setInt(1, Integer.parseInt(textField.getText()));
					st.setString(2,textField_1.getText());
					st.setString(3,textField_2.getText());
					
					
					st.executeUpdate();
					cn.close();

					JOptionPane.showMessageDialog(null, "customer added");
					textField.setText(" ");
					textField_1.setText(" ");
					textField_2.setText(" ");
					
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
			}
		});
		btnAddCustomer.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnAddCustomer.setBounds(127, 208, 200, 50);
		getContentPane().add(btnAddCustomer);

	}

}
