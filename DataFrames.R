#Data frames, VAMOS USAR MUITO OMG

#É como se fosse uma matriz mais elaborada :o

df_teste <- data.frame(
  nome = c("Tom", "Bob", "Mel", "Ana"),
  idade = c(10, 10, 10, 30),
  salario = c(1500.2,1300.4,500.1,100.4)
)

#Funções que podem ser uteis

#Percorre o vetor
df_teste$idade

#Valor máximo
max(df_teste$idade)

#  média aritmética do vetor
mean(df_teste$idade)

#Valor mínimo
min(df_teste$idade)
