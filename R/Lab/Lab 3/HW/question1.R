mean(Book2$Total)
getmode <- function(V) {
  uniqv <- unique(V)
  uniqv[which.max(tabulate(match(V, uniqv)))]
}
getmode(Book2$Total)
median(Book2$Total)
max(Book2$Total)
min(Book2$Total)
range(Book2$Total)
summary(Book2$Total)
pie(table(Book2$`UG/PG`))
plot(Book2$`HSC/UG`)