
varying vec3 vNormal;
varying vec3 vPos;
varying vec2 vUv;

void main(){

  vNormal = normal;
  vPos = position;
  vUv = uv;
  gl_Position  = projectionMatrix * modelViewMatrix * vec4( position , 1.0 );


}
