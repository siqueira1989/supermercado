
package com.exemplo.supermercado.Model;


public class Produto {
    private int codproduto;
    private String nomeproduto;
    private String categoriaproduto;
    private Double estoqueproduto;
    private Double estoqueminproduto; 
    private Double precounitarioproduto;
    private Double precocomercialproduto;
    private Boolean situacaoestoqueproduto;

    public int getCodproduto() {
        return codproduto;
    }

    public void setCodproduto(int codproduto) {
        this.codproduto = codproduto;
    }

    public String getNomeproduto() {
        return nomeproduto;
    }

    public void setNomeproduto(String nomeproduto) {
        this.nomeproduto = nomeproduto;
    }

    public String getCategoriaproduto() {
        return categoriaproduto;
    }

    public void setCategoriaproduto(String categoriaproduto) {
        this.categoriaproduto = categoriaproduto;
    }

    public Double getEstoqueproduto() {
        return estoqueproduto;
    }

    public void setEstoqueproduto(Double estoqueproduto) {
        this.estoqueproduto = estoqueproduto;
    }

    public Double getEstoqueminproduto() {
        return estoqueminproduto;
    }

    public void setEstoqueminproduto(Double estoqueminproduto) {
        this.estoqueminproduto = estoqueminproduto;
    }

    public Double getPrecounitarioproduto() {
        return precounitarioproduto;
    }

    public void setPrecounitarioproduto(Double precounitarioproduto) {
        this.precounitarioproduto = precounitarioproduto;
    }

    public Double getPrecocomercialproduto() {
        return precocomercialproduto;
    }

    public void setPrecocomercialproduto(Double precocomercialproduto) {
        this.precocomercialproduto = precocomercialproduto;
    }

    public Boolean getSituacaoestoqueproduto() {
        return situacaoestoqueproduto;
    }

    public void setSituacaoestoqueproduto(Boolean situacaoestoqueproduto) {
        this.situacaoestoqueproduto = situacaoestoqueproduto;
    }
}
