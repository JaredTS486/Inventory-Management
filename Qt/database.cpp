#include <mysql/mysql.h>
#include <cstdio>
#include <cstdlib>
#define server "jpsharpe.net"
#define user "shauni"
#define password "M3g@m1nd!"
#define database "ewaste"

int Connect()
{
    MYSQL *conn;
    MYSQL_RES *res;
    MYSQL_ROW row;
    conn = mysql_init(NULL);

    // connect to database
    if(!mysql_real_connect(conn, server, user, password, database, 0, NULL, 0))
    {
        fprintf(stderr, "%s\n", mysql_error(conn));
        return -1;
    }

    // send SQL query
    if(mysql_query(conn, "select * from cpp_testTAB"))
    {
        fprintf(stderr, "%s\n", mysql_error(conn));
        return -1;
    }

    res = mysql_use_result(conn);

    // output table name
    printf("MySQL Tables in mysql database:\n");
    while ((row = mysql_fetch_row(res)) != NULL)
    {
        printf("%s %s %s %s\n", row[0], row[1], row[2], row[3]);
    }

    // close connection
    mysql_free_result(res);
    mysql_close(conn);

    return 0;
}
