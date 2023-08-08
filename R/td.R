# TD
#
# This contains functions for testing Teradata connections and queries

library(RJDBC)

td_con <- function() {
  driver <- JDBC(
      "com.teradata.jdbc.TeraDriver"
    , "/home/mortimer/terajdbc-16.20.00.13.jar"
  )
  conn <- dbConnect(
      driver
    , "jdbc:teradata://192.168.190.128/TMODE=ANSI"
    , "mortch"
    , "mortch"
  )
  return(conn)
}

dbcinfo <- dbGetQuery(td_con(),"select * from dbc.dbcinfo;")

View(dbcinfo)
