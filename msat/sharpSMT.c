/*
 * sharpSMT.c: turn All-SMT of MathSAT into #SMT
 * author: Quoc-Sang Phan <q.phan@qmul.ac.uk>
 *
 * to compile: gcc sharpSMT.c -I${MSAT_DIR}/include -L${MSAT_DIR}/lib -lmathsat -lgmpxx -lgmp -lstdc++ -o sharpSMT
 * to run: ./sharpSMT ex.smt2
 */

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include "mathsat.h"

typedef struct MyData {
    msat_env env;
    msat_term *important;
} MyData;

static int my_callback(msat_term *model, int size, void *user_data)
{
    return 1;
}

size_t count_tokens(char * str){
    int count = 0;
    char * pch = strtok (str," ");
    while (pch != NULL)
    {
       count++;
       pch = strtok (NULL, " ");
    }
    return count;
}

char *trim_white_space(char *str)
{
    char *end;

    while(isspace(*str)) str++;

    if(*str == 0)
       return str;

    end = str + strlen(str) - 1;
    while(end > str && isspace(*end)) end--;

    *(end+1) = 0;
 
    return str;
}

// In the future, MathSAT should provide an API to extract important variables
size_t get_important(char *filename, void *user_data )
{
    MyData *data = (MyData *)user_data;

    FILE * fp;
    char * line = NULL;
    ssize_t read;
    size_t len = 0, niv;
    int i = 0;
    
    fp = fopen(filename, "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);
    
    while ((read = getline(&line, &len, fp)) != -1) {
       char * pch = strstr (line,"check-allsat");
       if(pch != NULL){
	  char * start = strrchr(line,'(');
          char * end = strchr(line,')');
          char str[end-start];
          memcpy (str, start+1, end-start-1);
          str[end-start-1] = '\0';
          char* str1 = trim_white_space(str);
          char str2[strlen(str1)];
	  strcpy (str2,str1);
          niv = count_tokens(str1);
          data->important = malloc (niv * sizeof(msat_term));
          pch = strtok (str2," ");
          while (pch != NULL)
          {
              data->important[i++] = msat_from_string(data->env, pch);
              pch = strtok (NULL, " ");
          }
          break;
       }
    }

    if (line)
       free(line);
    fclose(fp);
    return niv;
}

int main(int argc, char *argv[])
{
    msat_config cfg;
    msat_env env;
    msat_term f;

    MyData data;

    cfg = msat_create_config();
    env = msat_create_env(cfg);
    msat_destroy_config(cfg);

    FILE * fp;
    const int pos = 1;
    int i;
    
    fp = fopen(argv[pos], "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);

    f = msat_from_smtlib2_file(env, fp);
    fclose(fp);

    msat_assert_formula(env, f);

    data.env = env;

    int niv = get_important(argv[pos], &data);

    int N = msat_all_sat(env, data.important, niv, my_callback, 0);

    printf("\n%d models\n\n",N);

    free(data.important);
    msat_destroy_env(env);
    return 0;
}
