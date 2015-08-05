#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
    int s;
    int l_s[10];
    int e;
    int l_e[10];
    int n;
    int l_n[10];
    int d;
    int l_d[10];
    int send;
    int m;
    int l_m[10];
    int o;
    int l_o[10];
    int r;
    int l_r[10];
    int more;
    int y;
    int l_y[10];
    int money;

    for(s=0; s<10; s++){
        int i_s;
        int e;
        if(s == 0){
            continue;
        }
        for(i_s=0; i_s<10; i_s++){
            l_s[i_s] = 0;
        }
        l_s[s] = 1;
        for(e=0; e<10; e++){
            int i_e;
            int n;
            if(l_s[e]){
                continue;
            }
            for(i_e=0; i_e<10; i_e++){
                l_e[i_e] = l_s[i_e];
            }
            l_e[e] = 1;
            for(n=0; n<10; n++){
                int i_n;
                int d;
                if(l_e[n]){
                    continue;
                }
                for(i_n=0; i_n<10; i_n++){
                    l_n[i_n] = l_e[i_n];
                }
                l_n[n] = 1;
                for(d=0; d<10; d++){
                    int i_d;
                    int m;
                    if(l_n[d]){
                        continue;
                    }
                    for(i_d=0; i_d<10; i_d++){
                        l_d[i_d] = l_n[i_d];
                    }
                    l_d[d] = 1;
                    send = s;
                    send = send * 10 + e;
                    send = send * 10 + n;
                    send = send * 10 + d;
                    for(m=0; m<10; m++){
                        int i_m;
                        int o;
                        if(m == 0){
                            continue;
                        }
                        if(l_d[m]){
                            continue;
                        }
                        for(i_m=0; i_m<10; i_m++){
                            l_m[i_m] = l_d[i_m];
                        }
                        l_m[m] = 1;
                        for(o=0; o<10; o++){
                            int i_o;
                            int r;
                            if(l_m[o]){
                                continue;
                            }
                            for(i_o=0; i_o<10; i_o++){
                                l_o[i_o] = l_m[i_o];
                            }
                            l_o[o] = 1;
                            for(r=0; r<10; r++){
                                int i_r;
                                int y;
                                if(l_o[r]){
                                    continue;
                                }
                                for(i_r=0; i_r<10; i_r++){
                                    l_r[i_r] = l_o[i_r];
                                }
                                l_r[r] = 1;
                                more = m;
                                more = more * 10 + o;
                                more = more * 10 + r;
                                more = more * 10 + e;
                                for(y=0; y<10; y++){
                                    int i_y;
                                    if(l_r[y]){
                                        continue;
                                    }
                                    for(i_y=0; i_y<10; i_y++){
                                        l_y[i_y] = l_r[i_y];
                                    }
                                    l_y[y] = 1;
                                    money = m;
                                    money = money * 10 + o;
                                    money = money * 10 + n;
                                    money = money * 10 + e;
                                    money = money * 10 + y;
                                    if(send + more == money){
                                        printf("%d + %d = %d\n", send, more, money);
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return 0;
}

