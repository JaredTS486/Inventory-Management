#ifndef SCANNER_H
#define SCANNER_H
#include <pthread.h>

class Scanner
{
public:
    Scanner();
    Scanner(bool a, std::string b);
    ~Scanner();
    bool done;
    std::string data;
    pthread_t listener, fetcher;

private:
    int init();
    void *listen(void*);
    void *fetch(void*);
    int err(std::string);
};

#endif // SCANNER_H
