df_grupo <- rbind(captura.carlos,
                  captura.giuliana,
                  captura.joana,
                  captura.joana,
                  captura.marina,
                  captura.rafael)


rm(captura.carlos,
   captura.giuliana,
   captura.joana,
   captura.marina,
   captura.rafael)

#exibindo os primeiros registros
head(df_grupo, n = 70)

#Vendo a estrutura do df
str(df_grupo)

#Devolve as dimensões
dim(df_grupo)

#Mostra detalhes do df (caracter, quantidade... )
#Lembrando o que são os dados ]
summary(df_grupo)

#Manipulando um df (DATAFRAME)
#Acessando linhas e colunas
df_grupo[1,]
df_grupo[,1]

#Filtrando linhas
df_grupo[df_grupo$cpu < 50,]

#Filtrando colunas, quando queira trazer colunas especifícas
df_grupo[,c("ram", "cpu")]

#Criando uma nova coluna no dataframe com alguma condição
df_grupo$alerta <- df_grupo$ram > 50

#Média da coluna ram
mean(df_grupo$ram)

#Média dos dados de uma coluna ou linha especifico 
#filtrando pelo nome do usuário
mean(df_grupo$ram[df_grupo$user == "carlos"])
mean(df_grupo$ram[df_grupo$user == "giuliana"])
mean(df_grupo$ram[df_grupo$user == "joana"])
mean(df_grupo$ram[df_grupo$user == "marina"])
mean(df_grupo$ram[df_grupo$user == "rafael"])

media_ram_marina <-
  mean(df_grupo$ram[df_grupo$user == "marina"])

aggregate(cpu ~ user, data = df_grupo, FUN = mean)

#Ver depois como se remove
#rm(df_grupo$alerta)

