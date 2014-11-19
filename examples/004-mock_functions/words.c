#include <string.h>

int split_words(char *sentence) {
    int i;
    int count = 1;
    int length = strlen(sentence);

    for (i = 0; i < length; i++) {
        if (sentence[i] == ' ') {
            sentence[i] = '\0';
            count++;
        }
    }

    return count;
}

void words(const char *sentence, void (*walker)(const char *, void *), void *memo) {
    (*walker)(sentence, memo);
}
