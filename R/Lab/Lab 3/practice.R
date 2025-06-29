data()
View(DNase)

new <- data.frame(RunXconc = c((DNase$conc) * (DNase$density)))
View(new)
ok <- cbind(DNase, new)
View(ok)
