
package com.exemplo.supermercado.Model;

import java.util.Date;

public class ProdutoEstoque {
    private int idProdutoEstoque;
    private String  CodBrarraProdutoEstoque;
    private Produto produto;
   private Date ValidadeProdutoEstoque;

    public int getIdProdutoEstoque() {
        return idProdutoEstoque;
    }

    public void setIdProdutoEstoque(int idProdutoEstoque) {
        this.idProdutoEstoque = idProdutoEstoque;
    }

    public String getCodBrarraProdutoEstoque() {
        return CodBrarraProdutoEstoque;
    }

    public void setCodBrarraProdutoEstoque(String CodBrarraProdutoEstoque) {
        this.CodBrarraProdutoEstoque = CodBrarraProdutoEstoque;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public Date getValidadeProdutoEstoque() {
        return ValidadeProdutoEstoque;
    }

    public void setValidadeProdutoEstoque(Date ValidadeProdutoEstoque) {
        this.ValidadeProdutoEstoque = ValidadeProdutoEstoque;
    }
  
}
