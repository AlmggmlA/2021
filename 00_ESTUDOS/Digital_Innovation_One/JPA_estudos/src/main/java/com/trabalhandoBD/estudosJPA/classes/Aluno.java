package com.trabalhandoBD.estudosJPA.classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Aluno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String nome;

    @Column
    private int idade;

    @ManyToOne(fetch = FetchType.LAZY)
    private Estado estado;

    public Aluno(){}

    public Aluno(String nome,int idade){
        this.nome = nome;
        this.idade = idade;
    }

    public Aluno(String nome,int idade, Estado estado){
        this.nome = nome;
        this.idade = idade;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public String toString(){
        final StringBuilder stringParametroAluno = new StringBuilder("Aluno{");
        stringParametroAluno.append("id=").append(id);
        stringParametroAluno.append(", nome='").append(nome).append('\'');
        stringParametroAluno.append(", idade='").append(idade);
        stringParametroAluno.append(", estado='").append(estado);//.append('\'');
        stringParametroAluno.append('}');
        return stringParametroAluno.toString();
    }
}