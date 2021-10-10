package com.trabalhandoBD.estudosJPA;


import com.trabalhandoBD.estudosJPA.classes.Aluno;
import com.trabalhandoBD.estudosJPA.classes.Estado;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Execucao01 {
    public static void main(String[] args) {

        // Criando um gerenciador de entidades com o banco de dados especificado no arquivo "persistence.xml"
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("part1-DIO");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        //Criando instâncias para serem adicionadas no BD.
        Estado estadoParaAdicionar = new Estado("Maranhão","MA");
        Aluno alunoParaAdicionar = new Aluno("Daniel",29,estadoParaAdicionar);

        //Iniciando uma transação para adicionar as instâncias no BD.
        entityManager.getTransaction().begin();

        entityManager.persist(estadoParaAdicionar);
        entityManager.persist(alunoParaAdicionar);

        entityManager.getTransaction().commit();

        //Fechando o gerenciador de entidades e encerrando a fábrica de gerenciamento de entidade.
        entityManager.close();
        entityManagerFactory.close();
    }
}
