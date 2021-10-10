package com.trabalhandoBD.estudos;

import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@SpringBootApplication
public class ConnectionJDBC {

	public static void main(String[] args) throws SQLException {

		String urlConnection = "jdbc:mysql://localhost:3306/digital_innovation_one";
		Connection conexao = null;
		try{
			conexao = DriverManager.getConnection(urlConnection, "root","123456");
			System.out.println("Conectado com sucesso!");
		}catch (Exception e){
			System.out.println("falha na conexão: "+ e);
		}finally {
			conexao.close();
		}
	}
}
