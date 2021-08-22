import java.awt.EventQueue;

import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTable;

import java.awt.Font;

import javax.swing.JTextField;
import javax.swing.JButton;



import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import net.proteanit.sql.DbUtils;
import javax.swing.JDesktopPane;
import java.awt.Color;
import javax.swing.JScrollPane;




public class Search extends JInternalFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private JTextField textField;
	private JTable table_1;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Search frame = new Search();
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
	public Search() {
		setMaximizable(true);
		setIconifiable(true);
		setClosable(true);
		setBounds(100, 100, 686, 472);
		getContentPane().setLayout(null);
		
		JDesktopPane desktopPane = new JDesktopPane();
		desktopPane.setBackground(Color.WHITE);
		desktopPane.setBounds(0, 0, 840, 464);
		getContentPane().add(desktopPane);
		
		JLabel lblBid = new JLabel("Bid");
		lblBid.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblBid.setBounds(172, 38, 62, 50);
		desktopPane.add(lblBid);
		
		textField = new JTextField();
		textField.setBounds(234, 53, 116, 22);
		desktopPane.add(textField);
		textField.setColumns(10);
		
		JButton btnSerach = new JButton("Search");
		btnSerach.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				

				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="select* from books where Bid=?";
					PreparedStatement st=cn.prepareStatement(query);
					st.setInt(1,Integer.parseInt(textField.getText()) );
					//st.setString(2,textField_1.getText());
					ResultSet rs=st.executeQuery();
					
					
						table_1.setModel(DbUtils.resultSetToTableModel(rs));
						/*
						
						tm.addColumn("Bid");
						tm.addColumn("Bname");
						tm.addColumn("Publisher");
						tm.addColumn("Category");
						tm.addColumn("Quantity");
						*/
						//
						//table.setModel(DbUtils.resultSetToTableModel(set));
						//getContentPane().add(tb);
						//Add ad=new Add();
						//Object[] columns={"Bid","Bname","Publisher","Category","Quantity"};
						//Object[] row=new Object[5];
						/*DefaultTableModel tm=new DefaultTableModel();
						JTable tb=new JTable();
						tm.setColumnIdentifiers(columns);
                        String s[]=query.split(",");
						
						tm.addRow(new String[]{s[0],s[1],s[2],s[3],s[4]});
												tb.setModel(tm);*/
						
					
					
					cn.close();
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
			}
		});
		btnSerach.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnSerach.setBounds(406, 52, 97, 25);
		desktopPane.add(btnSerach);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(27, 138, 628, 214);
		desktopPane.add(scrollPane);
		
		table_1 = new JTable();
		scrollPane.setViewportView(table_1);
		
		JButton btnModify = new JButton("Modify");
		btnModify.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try {
					//Class.forName("com.mysql.jdbc.Driver");
					//Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					//String query="select Bid from books where Bname=?,Publisher=?";
					//PreparedStatement st=cn.prepareStatement(query);
					//st.setString(1,textField.getText());
					//st.setString(2,textField_1.getText());
					//ResultSet rs=st.executeQuery();
					//cn.close();
						modify m=new modify();
						desktopPane.add(m);
						m.setVisible(true);
						//m.textField.setText(rs.getString(1));
						m.textField.setText(textField.getText());
					
					
					
					
				} catch (Exception e) {
					JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
				}
				
			}
				
			
		});
		btnModify.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnModify.setBounds(230, 380, 97, 25);
		desktopPane.add(btnModify);
		
		JButton btnDelete = new JButton(" Delete");
		btnDelete.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/library?user=root&password=myproject");
					String query="delete from books where Bname=?";
					PreparedStatement st=cn.prepareStatement(query);
					st.setString(1, textField.getText());
					st.executeUpdate();
					cn.close();
					JOptionPane.showMessageDialog(null,"Data deleted");	
					textField.setText(" ");
					
					} 
					catch (Exception e) {
						JOptionPane.showMessageDialog(null, "Error"+e.getMessage());
					}
					
				}
			
		});
		btnDelete.setFont(new Font("Tahoma", Font.BOLD, 16));
		btnDelete.setBounds(366, 380, 97, 25);
		desktopPane.add(btnDelete);
		
		
		
		
	}
}
