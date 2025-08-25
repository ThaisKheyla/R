#Criando Histógrama
hist(df_grupo$ram)

#Como mudar o nome do eixo X, Y e Título
hist(df_grupo$disco,
     main = "Histograma de uso do disco",
     xlab = "Disco",
     ylab = "Frequência",
     border = FALSE,
     col = "blue")
