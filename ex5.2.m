function X = throughput(a,b,c,d,e) 
        AA = [-2*a,0,0,0,e, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, e,0,0,0,0];
        AB = [a,-(a+b),0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,e,0,0,0];
        AC = [0,b,-(a+c),0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,e,0,0];
        AD = [0,0,c,-(a+d),0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,e,0];
        AE = [0,0,0,d,-(a+e), 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,e];
        BA = [a,0,0,0,0, -(a+b),0,0,0,e, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        BB = [0,a,0,0,0, a,-2*b,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        BC = [0,0,a,0,0, b,-b-c,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        BD = [0,0,0,a,0, 0,0,c,-b-d,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        BE = [0,0,0,0,a, 0,0,0,d,-b-e, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        CA = [0,0,0,0,0, b,0,0,0,0, -a-c,0,0,0,e, 0,0,0,0,0, 0,0,0,0,0];
        CB = [0,0,0,0,0, 0,b,0,0,0, a,-c,0,0,0, 0,0,0,0,0, 0,0,0,0,0];
        CC = [0,0,0,0,0, 0,0,b,0,0, 0,0,-2*c,0,0, 0,0,0,0,0, 0,0,0,0,0];
        CD = [0,0,0,0,0, 0,0,0,b,0, 0,0,c,-d,0, 0,0,0,0,0, 0,0,0,0,0];
        CE = [0,0,0,0,0, 0,0,0,0,b, 0,0,0,d,-e, 0,0,0,0,0, 0,0,0,0,0];
        DA = [0,0,0,0,0, 0,0,0,0,0, c,0,0,0,0, -a-d,0,0,0,e, 0,0,0,0,0];
        DB = [0,0,0,0,0, 0,0,0,0,0, 0,c,0,0,0, a,-d,0,0,0, 0,0,0,0,0];
        DC = [0,0,0,0,0, 0,0,0,0,0, 0,0,c,0,0, 0,0,-c-d,0,0, 0,0,0,0,0];
        DD = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,c,-2*d,0, 0,0,0,0,0];
        DE = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,d,-d-e, 0,0,0,0,0];
        EA = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, d,0,0,0,0, -a-e,0,0,0,e];
        EB = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,d,0,0,0, a,-e,0,0,0];
        EC = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,d,0,0, 0,0,-c-e,0,0];
        ED = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,d,0, 0,0,c,-d,0];
        EE = [0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,d, 0,0,0,d,-2*e];
        P = ones(1,25);

        L = [AA;AB;AC;AD;AE; BA;BB;BC;BD;BE; CA;CB;CC;CD;CE; DA;DB;DC;DD;DE; EA;EB;EC;ED;EE; P];
        R = [0;0;0;0;0; 0;0;0;0;0; 0;0;0;0;0; 0;0;0;0;0; 0;0;0;0;0; 1];
        Probs = L \ R;
        
        Probs
        suma = sum(Probs)
        
        X=(1-Probs(1))/a;
endfunction

X=throughput(4,60,60,10,60)