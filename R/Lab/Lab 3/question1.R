mean(Book2$Total)
getmode <- function(X) {
  uniqx <- unique(X)
  uniqx[which.max(tabulate(match(X, uniqx)))]
}
getmode(Book2$Total)
median(Book2$Total)
max(Book2$Total)
min(Book2$Total)
range(Book2$Total)
summary(Book2$Total)
pie(table(Book2$`UG/PG`))
plot(Book2$`HSC/UG`)