data (iris)
print(iris)

#1. Data Sepal.Length
iris$Sepal.Length

#2. Tipe data tiap kolom
str(iris$Sepal.Length)

#3. Membuat variabel "Turunan" dari $Sepal.Width dengan 2 nilai
library(dplyr)
iris <- iris %>% 
  mutate(
    Turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )
head(iris)

#4. Mengubah variabel "Turunan" menjadi "Sepal"
iris <- iris %>%
  rename(Sepal = Turunan)
head(iris)

#5. Mengambil data "Sepal" bernilai besar dari spesies virginica
virginica_besar <- iris [
  iris$Species == "virginica" & iris$Sepal == "Besar",
]
print(virginica_besar)

#6.Mengecek jumlah species dalam data
table(iris$Species)

#7. Memecah data iris menjadi 3 data frame dengan species tertentu
iris_setosa <- iris[iris$Species == "setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_virginica <- iris[iris$Species == "virginica", ]

#Hasil
print(iris_setosa)
print(iris_versicolor)
print(iris_virginica)

#8. Mengurutkan data berdasarkan $Sepal.Width
iris_setosa_urut <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor_urut <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica_urut <- iris_virginica[order(iris_virginica$Sepal.Width), ]

#Hasil
print(iris_setosa_urut)
print(iris_versicolor_urut)
print(iris_virginica_urut)