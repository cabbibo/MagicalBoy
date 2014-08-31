uniform sampler2D t_audio;

varying vec3 vNormal;
varying vec3 vPos;
varying vec2 vUv;

varying float vSlice;
varying vec4 vSliceAC;

void main(){




  vec4 aC = texture2D( t_audio , vec2( vSlice , 0. ) );
  gl_FragColor = aC;
}


