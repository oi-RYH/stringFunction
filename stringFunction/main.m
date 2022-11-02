//
//  main.m
//  stringFunction
//
//  Created by 배정훈 on 2022/11/03.
//

#include <stdio.h>

void strcat_(char *str1p, char *str2p);
void strcpy_ (char *str1p, char *str2p);
char* strstr_ (char *str1p, char *str2p);

int main () {
    
    char str1[100] = " ";
    char str2[100] = " ";
    
    printf("문장을 입력하세요: ");
    scanf("%s", str1);
    printf("문장을 입력하세요: ");
    scanf("%s", str2);
    
    printf("문자열 주소 반환: 0x%p\n", strstr_(str1, str2));
    
    strcat_(str1, str2);
    
    printf("문자열 붙여넣기: %s\n", str1);
    
    strcpy_(str1, str2);
    
    printf("기존 문자열 바꾸기: %s\n", str1);
    

    
    return 0;
}

//strcat----------------------------------

void strcat_(char *str1p, char *str2p) {
    
    int len1 = 0;
    int len2 = 0;
    
    while (*(str1p + len1) != '\0') {
        len1++;
    }
    while (*(str2p + len2) != '\0') {
        len2++;
    }
    
    for (int i = 0; i < len2; i++) {
        *(str1p + len1 + i) = *(str2p + i);
    }
    
}

//strcpy------------------------------------

void strcpy_ (char *str1p, char *str2p) {
    
    int len = 0;
    while (*(str2p + len) != '\0') {
        len++;
    }
    
    for (int i = 0; i <= len; i++) {
        *(str1p + i) = *(str2p + i);
    }
}

//strstr-------------------------------------

char* strstr_ (char *str1p, char *str2p) {
    
    int len = 0;
    int cnt = 0;
    
    while (*(str2p + len) != '\0') {
        len++;
    }
    
    while (*(str1p++) != '\0') {
        if (*str1p == *str2p) {
            char *p1 = str1p;
            char *p2 = str2p;
            while (*p2 != '\0') {
                if (*(p1++) == *(p2++)) {
                    cnt++;
                }
            }
            if (cnt == len) {
                return p1 - len;
            } else {
                cnt = 0;
            }
        }
    }
    
    return NULL;
}
