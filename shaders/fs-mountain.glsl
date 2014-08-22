
uniform float waterRender;

varying vec3 vNormal;
varying vec3 vPos;
varying vec2 vUv;

void main(){


  if( waterRender > .5 ){

    if( vPos.y < 0. ){
      discard;
    }

  }

  vec3 c = vec3( 1. , 1. , 1. );
  float a = 1.;
  if( vPos.y < 0. ){

    c = vec3( .1 , .4 , 1. ) * (100. - abs( vPos.y )) /100.;
    a = 3. - abs( vPos.y );

  }

  gl_FragColor = vec4( c * abs( vNormal ), a );

  gl_FragColor = vec4( vec3( vUv.x , vUv.y , 0. ) * a, a );

}
