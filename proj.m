% proj.m

function vect = proj(u, v)
  vect = dot(u,v)/dot(v,v)*v;  
end