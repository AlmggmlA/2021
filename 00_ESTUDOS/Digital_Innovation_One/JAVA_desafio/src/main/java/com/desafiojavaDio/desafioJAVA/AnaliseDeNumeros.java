//Você deve fazer a leitura de 5 valores inteiros. Em seguida mostre quantos valores informados são pares,
// quantos valores informados são ímpares, quantos valores informados são positivos e quantos valores informados são negativos.
//
// ENTRADA:
// Você receberá 5 valores inteiros.
//
// SAÍDA:
// Exiba a mensagem conforme o exemplo de saída abaixo, sendo uma mensagem por linha e não esquecendo o final de linha após cada uma.


package com.desafiojavaDio.desafioJAVA;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class AnaliseDeNumeros {
    public static void main(String[] args) throws IOException {

        Scanner leitor = new Scanner(System.in);
//declare suas variaveis corretamente
        int pares = 0;
        int impares = 0;
        int positivos = 0;
        int negativos = 0;
        int[] numeros = new int[5];

        for (int i=0;i<numeros.length;i++) {
            numeros[i] = leitor.nextInt();

            if (numeros[i] % 2 == 0) {
                pares += 1;
                if (numeros[i] > 0) {
                    positivos += 1;
                } else if (numeros[i] < 0) {
                    negativos += 1;
                }
            } else {
                if (numeros[i] != 0) {
                    impares += 1;
                    if (numeros[i] > 0) {
                        positivos += 1;
                    } else if (numeros[i] < 0) {
                        negativos += 1;
                    }
                }
            }

            // 2ª SOLUÇÃO
            //ArrayList<Integer> valores = new ArrayList<>();

            // for (int i=0;i<5;i++) {
            // int numero = leitor.nextInt();
            // valores.add(numero);

//            if(valores.get(i)%2 == 0) {
//                pares += 1;
//                if (valores.get(i) > 0) {
//                    positivos += 1;
//                } else if (valores.get(i)<0){
//                    negativos += 1;
//                }
//            }
//            else{
//                if(valores.get(i)!=0) {
//                    impares += 1;
//                    if (valores.get(i) > 0) {
//                        positivos += 1;
//                    } else if(valores.get(i)<0){
//                        negativos += 1;
//                    }
//                }
//            }
//          }

        }

        System.out.println( pares + " valor(es) par(es)");
        System.out.println( impares + " valor(es) impar(es)");
        System.out.println( positivos + " valor(es) positivo(s)");
        System.out.println( negativos + " valor(es) negativo(s)");
    }
}
