import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JDesktopPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Font;
import java.awt.Color;

import javax.swing.JLabel;


public class book extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					book frame = new book();
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
	public book() {
		getContentPane().setBackground(Color.PINK);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 881, 646);
		
		JDesktopPane desktopPane = new JDesktopPane();
		desktopPane.setBackground(Color.PINK);
		getContentPane().add(desktopPane, BorderLayout.CENTER);
		desktopPane.setLayout(null);
		
		JLabel lblLibrary = new JLabel("LIBRARY");
		lblLibrary.setFont(new Font("Tahoma", Font.BOLD | Font.ITALIC, 50));
		lblLibrary.setBounds(322, 38, 322, 118);
		desktopPane.add(lblLibrary);
		
		JLabel lblManagement = new JLabel("MANAGEMENT");
		lblManagement.setFont(new Font("Tahoma", Font.BOLD | Font.ITALIC, 50));
		lblManagement.setBounds(248, 215, 409, 108);
		desktopPane.add(lblManagement);
		
		JLabel lblSystem = new JLabel(" SYSTEM");
		lblSystem.setFont(new Font("Tahoma", Font.BOLD | Font.ITALIC, 50));
		lblSystem.setBounds(308, 396, 247, 79);
		desktopPane.add(lblSystem);
		
		
		
		JMenuBar menuBar = new JMenuBar();
		menuBar.setBackground(Color.WHITE);
		setJMenuBar(menuBar);
		
		JMenu mnBooks = new JMenu("Books");
		mnBooks.setFont(new Font("Segoe UI", Font.BOLD, 20));
		menuBar.add(mnBooks);
		
		
		
		JMenuItem mntmSearch = new JMenuItem("Search");
		mntmSearch.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				Search s=new Search();
				desktopPane.add(s);
				s.setVisible(true);
			}
		});
		mnBooks.add(mntmSearch);
		
		JMenu mnCustomer = new JMenu(" Customer");
		
		mnCustomer.setFont(new Font("Segoe UI", Font.BOLD, 20));
		menuBar.add(mnCustomer);
		
		JMenuItem mntmNewCustomer = new JMenuItem("New Customer");
		mntmNewCustomer.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				customer c=new customer();
				desktopPane.add(c);
				c.setVisible(true);
			}
		});
		mnCustomer.add(mntmNewCustomer);
		
		
		
		
		
		
		
		JMenuItem mntmAdd = new JMenuItem("Add");
		
		
		mntmAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				Add a=new Add();
				desktopPane.add(a);
				a.setVisible(true);
			
			}
		});
		
		
		mnBooks.add(mntmAdd);
		
		JMenu mnTransactions = new JMenu("Transactions");
		mnTransactions.setFont(new Font("Segoe UI", Font.BOLD, 20));
		menuBar.add(mnTransactions);
		
		JMenuItem mntmIssue = new JMenuItem("Issue");
		mntmIssue.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				issue i=new issue();
				desktopPane.add(i);
				i.setVisible(true);
				
			}
		});
		mnTransactions.add(mntmIssue);
		
		JMenuItem mntmReturn = new JMenuItem("Return");
		mntmReturn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
				returnbook r=new returnbook();
				desktopPane.add(r);
				r.setVisible(true);
			}
		});
		mnTransactions.add(mntmReturn);
		
		
		
	}
}
