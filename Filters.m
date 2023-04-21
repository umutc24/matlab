LPF = tf(2,[1 2])

ltiview(LPF)

HPF=tf([1 0], [1 2])
bode(HPF)

LPF2=tf(10,[1 3 10])
