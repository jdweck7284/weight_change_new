function [ X_vec] = wij_syn( dt_value, i_post, b_glu)

ti_fire = 100;
tj_fire = 120;
tau_pp = 50;
tau_pnp = 250;
tau_npp = 250;
wij_syn = 1;
t_delay = 1;


numerator = (((i_post(dt_value - tj_fire)) .* (b_glu(dt_value - tj_fire - t_delay))  .* (1 - wij_syn))) / (tau_pp);
X_vec = numerator / (((ipost(dt_value - tj_fire)) / (tau_npp) / (tau_npp)) + (b_glu(dt_value - ti_fire - t_delay)) / (tau_pnp)) .* (0 - wij_syn);
end

