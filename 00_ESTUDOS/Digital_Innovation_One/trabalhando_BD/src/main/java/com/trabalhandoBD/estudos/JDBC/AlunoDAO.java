package com.trabalhandoBD.estudos.JDBC;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlunoDAO {

    // CONSULTA
    public List<Aluno> consultarAluno(){

        // Preparar a lista que irá retornar alunos após consultar o BD.
        List<Aluno> listaAlunos = new ArrayList<>();

        try(Connection conexaoAlunoDAO = ConnectionJDBC_Factory.getConnection()){

            // Preparar consulta SQL.
            String sqlConsulta = "SELECT * FROM aluno";

            //Preparar STATEMENT com os parâmetros recebidos
            // Essa função não tem parâmetros porque irá retornar os valores da TABELA ALUNO.
            PreparedStatement statementValoresTabelaAluno = conexaoAlunoDAO.prepareStatement(sqlConsulta);

            //Realiza a consulta e armazena o valor retornado da consulta no objeto "valorRetornadoConsulta".
            ResultSet valorRetornadoConsulta = statementValoresTabelaAluno.executeQuery();

            //Cria um objeto "Aluno" e guarda na lista de alunos.
            while (valorRetornadoConsulta.next()){
                int id = valorRetornadoConsulta.getInt("id");
                String nome = valorRetornadoConsulta.getString("nome");
                int idade = valorRetornadoConsulta.getInt("idade");
                String estado = valorRetornadoConsulta.getString("estado");

                listaAlunos.add(new Aluno(id,nome,idade,estado));
            }
        }catch(SQLException e){
            System.out.println("Listagem de alunos FALHOU!");
            e.printStackTrace();
        }
        return listaAlunos;
    }

    //CONSULTA COM FILTRO.
    public Aluno consultarAluno_Id(int id){

        //Preparar objeto aluno para receber os valores do BD.
        Aluno alunoID = new Aluno();

        try(Connection conexaoAlunoDAO = ConnectionJDBC_Factory.getConnection()){

            //Preparar consulta SQL
            String sqlConsulta_ID = "SELECT * FROM aluno WHERE id = ?";

            //Preparar o STATEMENT com os parâmetros recebidos.
            PreparedStatement statementValorConsulta_ID = conexaoAlunoDAO.prepareStatement(sqlConsulta_ID);
            statementValorConsulta_ID.setInt(1,id);

            //Executa consulta e armazena o retorno da consulta no objeto "valorRetornadoConsulta_ID".
            ResultSet valorRetornoConsulta_ID = statementValorConsulta_ID.executeQuery();

            //Guaradar valores retornados da TABELA ALUNO no objeto aluno.
            if(valorRetornoConsulta_ID.next()){
                alunoID.setId(valorRetornoConsulta_ID.getInt("id"));
                alunoID.setNome(valorRetornoConsulta_ID.getString("nome"));
                alunoID.setIdade(valorRetornoConsulta_ID.getInt("idade"));
                alunoID.setEstado(valorRetornoConsulta_ID.getString("estado"));
            }

        }catch (SQLException e){
            System.out.println("Listagem de alunos FALHOU!");
            e.printStackTrace();
        }
        return alunoID;
    }

    //INSERIR
    public void inserirAluno(Aluno alunoInserir){
        try(Connection conexaoAlunoDAO = ConnectionJDBC_Factory.getConnection()){

            //Preparar SQL para INSERÇÃO de dados do aluno.
            String sqlInserirDadosAluno = "INSERT INTO aluno(nome, idade, estado) VALUES (?,?,?)";

            //Preparar STATEMENT com os parâmetros recebidos.
            PreparedStatement statementValorInserir = conexaoAlunoDAO.prepareStatement(sqlInserirDadosAluno);
            statementValorInserir.setString(1,alunoInserir.getNome());
            statementValorInserir.setInt(2,alunoInserir.getIdade());
            statementValorInserir.setString(3,alunoInserir.getEstado());

            //Executa INSERÇÃO e armazena o número de linhas afetadas.
            int linhasAfetadas = statementValorInserir.executeUpdate();

            System.out.println("Inserção BEM SUCEDIDAD! Foram adicionada(s) "+ linhasAfetadas + " linha(s)");

        }catch(SQLException e){
            System.out.println("Inserção FALHOU!");
            e.printStackTrace();
        }
    }

    //DELETAR
    public void deletarAluno(int id){
        try(Connection conexaoAlunoDAO = ConnectionJDBC_Factory.getConnection()){

            //Preparar SQL para DELETAR dados do aluno.
            String sqlDeletarAluno = "DELETE FROM aluno WHERE id= ?";

            //Preparar STATEMENT com os parâmetros recebidos.
            PreparedStatement statementValorDeletar = conexaoAlunoDAO.prepareStatement(sqlDeletarAluno);
            statementValorDeletar.setInt(1,id);

            //Executa DELETE e armazena o número de linhas afetadas.
            int linhasAfetadas = statementValorDeletar.executeUpdate();

            System.out.println("Delete BEM SUCEDIDO! Foram deletada(s) "+ linhasAfetadas + " linha(s)");

        }catch(SQLException e){
            System.out.println("Delete FALHOU!");
            e.printStackTrace();
        }
    }

    //ATUALIZAR
    public void atualizarAluno(Aluno alunoAtualizar){
        try(Connection conexaoAlunoDAO = ConnectionJDBC_Factory.getConnection()){

            //Preparar SQL para ATUALIZAR dados do aluno.
            String sqlAtualizar = "UPDATE aluno SET nome=?, idade=?, estado=? WHERE id= ?";

            //Preparar STATEMENT com os parâmetros recebidos.
            PreparedStatement statementValorAtualizar = conexaoAlunoDAO.prepareStatement(sqlAtualizar);
            statementValorAtualizar.setString(1,alunoAtualizar.getNome());
            statementValorAtualizar.setInt(2,alunoAtualizar.getIdade());
            statementValorAtualizar.setString(3,alunoAtualizar.getEstado());
            statementValorAtualizar.setInt(4,alunoAtualizar.getId());

            //Executa UPDATE e armazena o número de linhas afetadas.
            int linhasAfetadas = statementValorAtualizar.executeUpdate();

            System.out.println("Atualização BEM SUCEDIDO! Foram atualizada(s) "+ linhasAfetadas + " linha(s)");

        }catch(SQLException e){
            System.out.println("Atualização FALHOU!");
            e.printStackTrace();
        }
    }
}
