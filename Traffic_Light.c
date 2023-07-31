#define displays portb
#define light portd
#define redw 15
#define greenw 20
#define yellow 3
#define reds 23
#define greens 12
#define case1 1
#define case2 2
#define case3 3
#define case4 4

void counter(int c,int x){
     int arr [] ={0,1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34,35};
     for(;c>-1;c--){
         portc=255;
         displays=arr[c];
         if(x==1){
                 portd.B3=1;
                 portd.B1=1;
                 if(c==20||c<20){
                         portd.B1=0;
                         portd.B2=1;
                 }
         }
         else if(x==2){
                 portd.B0=1;
                 portd.B4=1;
                 if(c==12||c<12){
                         portd.B4=0;
                         portd.B5=1;
                 }
         }
         else if(x==3){
                 portd.B1=1;
         }
         else if(x==4){
                 portd.B4=1;
         }
         delay_ms(1000);
     }
     if(x==1){portd.B3=0;  portd.B2=0;  portd.B1=0;}
     else if(x==2){portd.B0=0;  portd.B5=0;  portd.B4=0;}
}

void automatic(){
     for(;;){
             counter(reds,case1);
             counter(redw,case2);
             if (porta.B0==1){ break; }
            }
}

void manual(){
     for(;;){
             if (porta.B0==1){
                       portd.B0=1;
                       portd.b5=1;
                       while (porta.B2);
                       portd.B0=0;
                       portd.b5=0;
                       portd.b3=1;
                       counter(yellow,case3);
                       portd.B1=0;
                       portd.B2=1;
                       while (porta.B2);
                       portd.b3=0;
                       counter(yellow,case4);
                       portd.B2=0;
                       portd.B4=0;
             }
             else if (porta.B0==0){
                  automatic();
             }
             }
}

void main() {
     trisb=0b00000000;  displays=0;     trisd=0b00000000;  portd=0;
     trisc.B0=0;        trisc.B1=0;     trisc.B2=0;        trisc.B3=0;
     portc.B0=0;        portc.B1=0;     portc.B2=0;        portc.B3=0;
     trisa.B4=1;
     adcon1=7;  trisa.b0=1;   trisa.b1=1;   trisa.b2=1;
     porta.b0=0;  porta.b1=0;  porta.b2=0;

     while(porta.b4);
            automatic();
            manual();
}