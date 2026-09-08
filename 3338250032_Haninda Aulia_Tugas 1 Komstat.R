
#Vector numeric
v_num <- c(2.5, 1.7, 3.9)
v_num

#Vector integer
v_int <- c(5L, 7L, 9L)
v_int

#Vector logical
v_log <- c(TRUE, TRUE, FALSE)
v_log

#Vector character
v_char <- c("Dea", "Dodo", "Rara")
v_char

#Matrix
m <- matrix(1:6, nrow = 2, ncol = 3)
m

#Array
a <- array(1:18, dim = c(3,2,3))
a

#Data Frame
df <- data.frame(
  Nama = c("Dea", "Dodo", "Rara"),
  Nilai = c(72, 80, 55),
  Lulus = c(TRUE, TRUE, FALSE)
)
df

#List

L <- list(
  num = c(2.5, 1.7, 3.9),
  int = c(5L, 7L, 9L),
  log = c(TRUE, TRUE, FALSE),
  m = matrix(1:6, nrow = 2, ncol = 3),
  df = data.frame(
    Nama = c("Dea", "Dodo", "Rara"),
    Nilai = c(72, 80, 55),
    Lulus = c(TRUE, TRUE, FALSE)
))
 
L

L$df