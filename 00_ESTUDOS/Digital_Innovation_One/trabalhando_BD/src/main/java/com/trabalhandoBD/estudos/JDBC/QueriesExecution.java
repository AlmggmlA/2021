package com.trabalhandoBD.estudos.JDBC;

import java.util.List;

public class QueriesExecution {
    public static void main(String[] args) {

            AlunoDAO alunoDAO = new AlunoDAO();

            //CONSULTAR
            List<Aluno> listaAlunos = alunoDAO.consultarAluno();
            listaAlunos.stream().forEach(System.out::println);

            //CONSULTAR COM FILTRO
            Aluno alunoConsultar = alunoDAO.consultarAluno_Id(2);
            System.out.println(alunoConsultar);

            //INSERIR
            Aluno alunoInserir = new Aluno("Matheus",43,"SP");
            alunoDAO.inserirAluno(alunoInserir);

            //DELETAR
            alunoDAO.deletarAluno(6);
            alunoDAO.consultarAluno().stream().forEach(System.out::println);

            //ATUALIZAR
            Aluno aluno_Atualizar = alunoDAO.consultarAluno_Id(5);
            aluno_Atualizar.setNome("Joaquim");
            aluno_Atualizar.setIdade(18);
            aluno_Atualizar.setEstado("RS");

            alunoDAO.atualizarAluno(aluno_Atualizar);
        }
}
