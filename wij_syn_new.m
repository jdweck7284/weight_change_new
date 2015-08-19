function [ X_vec] = wij_syn_new( dt_value, i_post, b_glu)

ti_fire = 0:0.1:100;
tj_fire = 0:0.1:120;
tau_pp = 50;
tau_pnp = 250;
tau_npp = 250;
wij_syn = 1;
t_delay = 1;

tmax = 10;
T_vector = dt_value:dt_value: tmax;
X_vec = size(T_vector);
dxdtvec = X_vec;

X_vec(1) = 2;


for t = 1:length(T_vector);

numerator = (((i_post(t - tj_fire)) .* (b_glu(t - tj_fire - t_delay))  .* (1 - wij_syn))) / (tau_pp);
dxdtvec(t) = numerator / (((ipost(t - tj_fire)) / (tau_npp) / (tau_npp)) + (b_glu(t - ti_fire - t_delay)) / (tau_pnp)) .* (0 - wij_syn);
X_vec(t) = Xvec(t-1) + dxdtvec(t)*dt_value;
end


