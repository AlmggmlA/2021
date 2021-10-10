package com.trabalhandoBD.estudos.JDBC;

public class Aluno {

    private int id;
    private String nome;
    private int idade;
    private String estado;

    public Aluno(int id, String nome,int idade, String estado){
        this.id = id;
        this.nome = nome;
        this.idade = idade;
        this.estado = estado;
    }

    public Aluno(String nome,int idade, String estado){
        this.nome = nome;
        this.idade = idade;
        this.estado = estado;
    }

    public Aluno(){}

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

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String toString(){
        final StringBuilder stringParametroAluno = new StringBuilder("Aluno{");
        stringParametroAluno.append("id=").append(id);
        stringParametroAluno.append(", nome='").append(nome).append('\'');
        stringParametroAluno.append(", idade='").append(idade);
        stringParametroAluno.append(", estado='").append(estado).append('\'');
        stringParametroAluno.append('}');
        return stringParametroAluno.toString();
    }
}
