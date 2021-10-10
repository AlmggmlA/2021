package com.trabalhandoBD.estudosJPA.teste02;


import com.trabalhandoBD.estudosJPA.classes.Aluno;
import com.trabalhandoBD.estudosJPA.classes.Estado;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Execucao02 {
    public static void main(String[] args) {

        // Criando um gerenciador de entidades com o banco de dados especificado no arquivo "persistence.xml"
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("TESTE");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        //Criando instâncias para serem adicionadas no BD.
        Estado estadoParaAdicionar = new Estado("Maranhao","MA");
        Aluno alunoParaAdicionar = new Aluno("Daniel",29,estadoParaAdicionar);

        //Iniciando uma transação para adicionar as instâncias no BD.
        entityManager.getTransaction().begin();

        entityManager.persist(estadoParaAdicionar);
        entityManager.persist(alunoParaAdicionar);

        entityManager.getTransaction().commit();

        // 3 - Resgatar instâncias no banco de dados
        Estado estadoEncontrado = entityManager.find(Estado.class, 6);
        Aluno alunoEncontrado = entityManager.find(Aluno.class, 2);

        System.out.println(estadoEncontrado);
        System.out.println(alunoEncontrado);

        // 4 - Alterar uma entidade
//        entityManager.getTransaction().begin();
//
//        alunoEncontrado.setNome("Karam");
//        alunoEncontrado.setIdade(20);
//
//        entityManager.getTransaction().commit();

        // 5 - Remover uma entidade
//        entityManager.getTransaction().begin();
//
//        entityManager.remove(alunoEncontrado);
//
//        entityManager.getTransaction().commit();

        //Fechando o gerenciador de entidades e encerrando a fábrica de gerenciamento de entidade.
        entityManager.close();
        entityManagerFactory.close();
    }
}
