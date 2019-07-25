import java.io.*;
import java.sql.*;

//import com.mysql.jdbc.Connection;
import com.opencsv.CSVReader;

public class ConverCsvToSql {

	public static void main(String[] args) throws FileNotFoundException, NullPointerException {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databaseproject", "root", "");
			if (!con.isClosed()) {
				System.out.println("Successfully connected to MySql Server....");
			}
		} catch (Exception e) {
			System.err.println("Exception:" + e.getMessage());
		}
		try {
			File file1 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/Features.csv"); // enter
																											// file name
																											// which you
																											// want to
																											// read
			FileReader filereader1 = new FileReader(file1); // pass file object so filereader will start to read the
															// file
			CSVReader csvReader1 = new CSVReader(filereader1);
			String[] nextRecord1;
			Statement statement1 = con.createStatement();
			while ((nextRecord1 = csvReader1.readNext()) != null) {
				//here nextRecord is indicating each new column.
				//Excel table had 3 columns in table. 
				statement1.executeUpdate("INSERT INTO features VALUE ('"+nextRecord1[0]+"','"+nextRecord1[1]+"' , '"+nextRecord1[2]+"')");
			}
			File file2 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/ResinForm.csv"); 
			FileReader filereader2 = new FileReader(file2); 
			CSVReader csvReader2 = new CSVReader(filereader2);
			String[] nextRecord2;
			Statement statement2 = con.createStatement();
			while ((nextRecord2 = csvReader2.readNext()) != null) {
				
				statement2.executeUpdate("INSERT INTO resinform VALUE ('"+nextRecord2[0]+"','"+nextRecord2[1]+"')");
			}
			File file3 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/ShoreScale.csv"); 
			FileReader filereader3 = new FileReader(file3); 
			CSVReader csvReader3 = new CSVReader(filereader3);
			String[] nextRecord3;
			Statement statement3 = con.createStatement();
			while ((nextRecord3 = csvReader3.readNext()) != null) {
				
				statement3.executeUpdate("INSERT INTO shorescale VALUE ('"+nextRecord3[0]+"','"+nextRecord3[1]+"')");
			}
			File file4 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/InjectionParameter.csv"); 
			FileReader filereader4 = new FileReader(file4); 
			CSVReader csvReader4 = new CSVReader(filereader4);
			String[] nextRecord4;
			Statement statement4 = con.createStatement();
			while ((nextRecord4 = csvReader4.readNext()) != null) {
				
				statement4.executeUpdate("INSERT INTO injectionparameter VALUE ('"+nextRecord4[0]+"', '"+nextRecord4[1]+"')");
			}
			File file5 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/ExtrusionParameter.csv"); 
			FileReader filereader5 = new FileReader(file5); 
			CSVReader csvReader5 = new CSVReader(filereader5);
			String[] nextRecord5;
			Statement statement5 = con.createStatement();
			while ((nextRecord5 = csvReader5.readNext()) != null) {
				
				statement5.executeUpdate("INSERT INTO extrusionparameter VALUE('"+nextRecord5[0]+"', '"+nextRecord5[1]+"')");
			}
			File file6 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/DryingParameter.csv"); 
			FileReader filereader6 = new FileReader(file6); 
			CSVReader csvReader6 = new CSVReader(filereader6);
			String[] nextRecord6;
			Statement statement6 = con.createStatement();
			while ((nextRecord6 = csvReader6.readNext()) != null) {
				
				statement6.executeUpdate("INSERT INTO dryingparameter VALUE('"+nextRecord6[0]+"', '"+nextRecord6[1]+"')");

			}
			File file7 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/Rubbers.csv");
			FileReader filereader7 = new FileReader(file7); 
			CSVReader csvReader7 = new CSVReader(filereader7);
			String[] nextRecord7;
			Statement statement7 = con.createStatement();
			while ((nextRecord7 = csvReader7.readNext()) != null) {
				
				statement7.executeUpdate("INSERT INTO rubber VALUE ('"+nextRecord7[0]+"','"+nextRecord7[1]+"', '"+nextRecord7[2]+"')");
			}
			File file8 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/Oils.csv"); 
			FileReader filereader8 = new FileReader(file8); 
			CSVReader csvReader8 = new CSVReader(filereader8);
			String[] nextRecord8;
			Statement statement8 = con.createStatement();
			while ((nextRecord8 = csvReader8.readNext()) != null) {
				
				statement8.executeUpdate("INSERT INTO oil VALUE ('"+nextRecord8[0]+"','"+nextRecord8[1]+"', '"+nextRecord8[2]+"')");
			}
			File file9 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/Odor.csv"); 
			FileReader filereader9 = new FileReader(file9); 
			CSVReader csvReader9 = new CSVReader(filereader9);
			String[] nextRecord9;
			Statement statement9 = con.createStatement();
			while ((nextRecord9 = csvReader9.readNext()) != null) {
			
				statement9.executeUpdate("INSERT INTO odor VALUE ('"+nextRecord9[0]+"','"+nextRecord9[1]+"')");
			}
			File file10 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/CAS.csv"); 
			FileReader filereader10 = new FileReader(file10); 
			CSVReader csvReader10 = new CSVReader(filereader10);
			String[] nextRecord10;
			Statement statement10 = con.createStatement();
			while ((nextRecord10 = csvReader10.readNext()) != null) {
				
				statement10.executeUpdate("INSERT INTO cas VALUE ('"+nextRecord10[0]+"','"+nextRecord10[1]+"','"+nextRecord10[2]+"','"+nextRecord10[3]+"','"+nextRecord10[4]+"','"+nextRecord10[5]+"')");

			}
			File file11 = new File("C:/Users/huvi2/eclipse-workspace/DataBaseIntern/csvFiles/Database.csv"); 
			FileReader filereader11 = new FileReader(file11); 
			CSVReader csvReader11 = new CSVReader(filereader11);
			String[] nextRecord11;
			Statement statement11 = con.createStatement();
			while ((nextRecord11 = csvReader11.readNext()) != null) {
			
				//this is the other way to retrive data.
				//does the same thing but in much compact way.
				String sql = "INSERT INTO maindata VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = con.prepareStatement(sql);
				for (int i = 0; i < 39; i++) {
					pstmt.setString(i + 1, nextRecord11[i]);
					System.out.println("After iteration: " + i);
				}
				pstmt.executeUpdate();
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}
