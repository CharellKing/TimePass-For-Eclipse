/* COPYRIGHT:   Copyright 2014 CharellkingQu
 * LICENSE:     GPL
 * AUTHOR:      CharellkingQu
 * DATE :       2014-04-17
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h> /*getopt*/

#include <string>

#include "global/error.h"
#include "shm/shm_multihashset.h"
#include "shm/shm_hash.h"


const char* t_month[] = {"January", "February", "March", "April", "May",
                         "June", "July", "August", "September", "October",
                         "November", "December"};
int len = sizeof(t_month) / sizeof(char*);
const int  n_month[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

struct Month {
    Month(const char* t_month, int n_month) : n_month(n_month) {
        strncpy(this->t_month, t_month, sizeof(this->t_month));
    }
    static int Compare(const Month& a, const Month& b) {
        return strcmp(a.t_month, b.t_month);
    }
    static off_t HashFunc(const Month& a) {
        return TimePass::Hash::HashFunc(a.t_month);
    }
    char t_month[16];
    int  n_month;
};

const std::string Label(const Month& a) {
    return std::string(a.t_month);
}

off_t Convert(const char* digit) {
    int ret = -1;
    if (sizeof(off_t) == sizeof(int32_t)) {
        ret = atol(digit);
    } else if (sizeof(off_t) == sizeof(int64_t)) {
        ret = atoll(digit);
    }
    return ret;
}

void ToDotPs(const char* name, const TimePass::ShmMultihashset<Month>* p_l) {
    char cmd[100];
    char file[100];
    snprintf(file, sizeof(file) - 1, "%s.dot", name);
    p_l->ToDot(file, Label);
    snprintf(cmd, sizeof(cmd) - 1, "dot -Tps %s.dot -o %s.ps && rm %s",
             name, name, file);
    system(cmd);
}


void Create(off_t len) {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Create(len)) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
    }
}

void Destroy() {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Destroy()) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
    }
}

void Insert() {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Open()) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
        return;
    }
    for (int i = 0; i < 12; ++i) {
        months.Insert(Month(t_month[i], n_month[i]));
    }
}

void Remove() {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Open()) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
        return;
    }
    char name[10];
    for (int i = 0; i < len; ++i) {
        months.Remove(Month(t_month[i], n_month[i]));
        snprintf(name, sizeof(name) - 1, "%02d", i);
        ToDotPs(name, &months);
    }
}

void Show() {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Open()) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
        return;
    }
    ToDotPs("multihashset", &months);
}

void Clear() {
    TimePass::ShmMultihashset<Month> months("/tmp/multihashset");
    if (false == months.Open()) {
        printf("errmsg = %s\n", TimePass::Error::GetLastErrmsg().c_str());
        return;
    }
    months.Clear();
}

void Usage() {
    printf("usage:\n"
             "-c [capacity] for create\n"
             "-d for destroy\n"
             "-i for write\n"
             "-r for remove\n"
             "-s for dot\n"
             "-e for clear\n");
}

int main(int argc, char** argv) {
    int result = getopt(argc, argv, "eirdsc:");
    if (-1 == result) {
        return 0;
    }

    switch (result) {
        case 'c':
            Create(Convert(optarg));
            break;
        case 'd':
            Destroy();
            break;
        case 'i':
            Insert();
            break;
        case 's':
            Show();
            break;
        case 'r':
            Remove();
            break;
        case 'e':
            Clear();
            break;
        default:
            Usage();
            break;
    }
    return 0;
}
