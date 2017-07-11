package com.github.amigos_de_jesus.extend.model;

public enum GraphType {
    BARRAS("Barras", "graficos/img1.jpg"), 
    SETORES("Setores", "graficos/img2.jpg"), 
    LINHAS("Linhas", "graficos/img3.jpg");
    
    private final String formated;
    private final String imgPath;
    private GraphType(String formated, String imgPath){
        this.formated = formated;
        this.imgPath = imgPath;
    }
    public String imgPath(){
        return imgPath;
    }
    
    @Override    
    public String toString() {
        return formated;
    }
}
