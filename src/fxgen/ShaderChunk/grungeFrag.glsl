vec2 p = pin.uv;
float pixelSize = 1.0;
float dx = mod(p.x, pixelSize) - pixelSize*0.5;
float dy = mod(p.y, pixelSize) - pixelSize*0.5;
p.x -= dx;
p.y -= dy;
vec3 col = texture2D(tGrunge, mix(3.0, 0.1, cScale) * pin.uv + vec2(time*0.1)).rgb;
float bright = 0.3333*(col.r + col.g + col.b);
float dist = sqrt(dx*dx + dy*dy);
float rad = bright * pixelSize * 0.8 * cRadius;
float m = step(dist, rad);
pout.color = mix(vec3(0.0), vec3(1.0), m);