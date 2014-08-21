/* COPYRIGHT: Copyright 2014 CharellkingQu
 * LICENSE: GPL
 * AUTHOR: CharellkingQu
 * DATE : 2014-04-17
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>/*getopt*/
#include <string>
#include "global/error.h"
#include "shm/shm_hashmultiset.h"
#include "shm/shm_hash.h"


const char* t_month[] = {"January", "February", "March", "April",
                                  "May", "June", "July", "August", "September",
                                  "October", "November", "February"};

const int n_month[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 2 };

const int len = sizeof(t_month) / sizeof(t_month[0]);

const char* SHM_FILE = "shm_hashmultiset";

struct Month {
  Month(const char* t_month, int n_month)
      : n_month(n_month) {
    strncpy(this->t_month, t_month, sizeof(this->t_month) - 1);
  }
  static int Compare(const Month& a, const Month& b) {
    return strcmp(a.t_month, b.t_month);
  }
  static off_t HashFunc(const Month& a) {
    return TimePass::Hash::HashFunc(a.t_month);
  }
  char t_month[16];
  int n_month;
};

typedef TimePass::ShmHashmultiset<Month>::ConstIterator ConstIterator;

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
void ToDotPs(const char* name, const TimePass::ShmHashmultiset<Month>* p_l) {
  char cmd[100];
  char file[100];
  snprintf(file, sizeof(file) - 1, "%s.dot", name);
  p_l->ToDot(file, Label);
  snprintf(cmd, sizeof(cmd) - 1, "dot -Tps %s.dot -o %s.ps && rm %s", name,
           name, file);
  system(cmd);
}
void Create(off_t len) {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Create(len)) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
  }
}
void Destroy() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Destroy()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
  }
}
void Insert() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }
  for (int i = 0; i < 12; ++i) {
    months.Insert(Month(t_month[i], n_month[i]));
  }
}

void Remove() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }
  char name[10];
  for (int i = 0; i < len; ++i) {
    months.Remove(Month(t_month[i], n_month[i]), NULL);
    snprintf(name, sizeof(name) - 1, "%02d", i);
    ToDotPs(name, &months);
  }
}

void Show() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }
  ToDotPs(SHM_FILE, &months);
}
void Clear() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }
  months.Clear();
}

void Read() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }

  printf("read:\n");
  TimePass::ShmHashmultiset<Month>::Iterator iter = months.Begin();
  while (months.End() != iter) {
    printf("<%s %d>, ", iter->t_month, iter->n_month);
    ++iter;
  }
  putchar('\n');

  printf("constread:\n");
  ConstIterator citer = (ConstIterator)(months.Begin());
  while (months.End() != citer) {
    printf("<%s %d>, ", citer->t_month, citer->n_month);
    ++citer;
  }
  putchar('\n');
}

void About() {
  TimePass::ShmHashmultiset<Month> months(SHM_FILE);
  if (false == months.Open()) {
    printf("errno = %d\n", TimePass::Error::GetErrno());
    return;
  }

  printf("capacity = %ld, size = %ld, TotalBytes = %ld, UsedBytes = %ld",
         months.Capacity(), months.Size(),
         months.TotalBytes(), months.UsedBytes());
}


void Usage() {
  printf("usage:\n"
         "-a for info\n"
         "-b for read\n"
         "-h for help\n"
         "-c [capacity] for create\n"
         "-d for destroy\n"
         "-i for write\n"
         "-r for remove\n"
         "-s for dot\n"
         "-e for clear\n");
}

int main(int argc, char** argv) {
  int result = getopt(argc, argv, "baheirdsc:");
  if (-1 == result) {
    Usage();
    return 0;
  }
  switch (result) {
    case 'a':
      About();
      break;
    case 'b':
      Read();
      break;
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
    case 'h':
      Usage();
      break;
  }
  return 0;
}