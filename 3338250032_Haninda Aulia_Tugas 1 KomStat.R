#Vector numeric
v_num <- c(2.5, 1.2, 3.9, 4.6, 5.1)
v_num

#Vector integer
v_int <- c(1L, 2L, 3L, 4L, 5L)
v_int

#Vector logical
v_log <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
v_log

#Vector character
v_char <- c("Nata", "Arlen", "Daris", "Gilang", "Wildan")
v_char

#Matrix
m <- matrix(1:6, nrow = 2, ncol = 3)
m

#Array
a <- array(1:18, dim = c(3,2,3))
a

#Data Frame
df <- data.frame(
  Nama = c("Nata", "Arlen", "Daris", "Gilang", "Wildan"),
  Nilai = c(72, 80, 55, 85, 40),
  Lulus = c(TRUE, TRUE, FALSE, TRUE, FALSE)
)
df

#List Pertama

L1 <- list(
  num = c(2.5, 1.2, 3.9),
  int = c(1L, 2L, 3L),
  log = c(TRUE, FALSE, TRUE),
  m = matrix(1:6, nrow = 2, ncol = 3),
  df = data.frame(
  Nama = c("Nata", "Arlen", "Daris", "Gilang", "Wildan"),
  Nilai = c(72, 80, 55, 85, 40),
  Lulus = c(TRUE, TRUE, FALSE, TRUE, FALSE)
))
 
L1

#List Gabungan

L2 <- list(
  numeric = v_num,
  integer = v_int,
  logical = v_log,
  matriks= m,
  DF = df,
  list1 = L1
)

L2