# Manejo de datos faltantes (NA)

# Crear un dataframe 

df <- data.frame(edad = c(42,40,35,NA,55, NA),
                 peso = c(80,NA,90,56,NA,75), 
                 IAH =  c(15,30,38,80,75,NA))
df

# Identificando missing data

sum(is.na(df$edad))  # Retorna el numero total de NA en el dataset 

is.na(df)             # Retorna True/false de NA del dataset
    
# Incorporar un NA en el dataset 

df$edad[df$edad==42] <- NA

df$edad[df$edad==42]

# Listado con NA del dataset 
df[!complete.cases(df),]
df

# Crear un nuevo dataset sin missing data 
nona_df <- na.omit(df)
nona_df
