package com.trabalhandoBD.estudos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionJDBC_opcao02 {
    public static void main(String[] args) throws SQLException {

        // Definindo parâmetros para realizar a conexão no MySQL.
        String driver = "mysql";
        String dataBaseAddress = "localhost:3306";
        String dataBaseName = "digital_innovation_one";
        String user = "root";
        String password = "123456";

        // Criando a string de conexao com os parâmetros informados.
        StringBuilder construcaoStringConexao = new StringBuilder("jdbc:")
                .append(driver).append("://")
                .append(dataBaseAddress).append("/")
                .append(dataBaseName);

        String urlConexao = construcaoStringConexao.toString();

        // Objeto de conexão declarado.
        Connection conexao = null;

        // Criando conexão usando o DriverManager, passando como parâmetros: url,usuário e senha.
        try{
                conexao = DriverManager.getConnection(urlConexao,user,password);
                System.out.println("Conectado com SUCESSO!");
        }catch (Exception e){
            System.out.println("Falha na conexão: "+e);
        }finally {
            conexao.close();
        }
    }
}
