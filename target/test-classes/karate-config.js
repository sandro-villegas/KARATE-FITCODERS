function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    apiUrl:'https://conduit-api.bondaracademy.com/api/'
  }
  if (env == 'dev') {
   config.UserEmail = 'zony123rbd@gmail.com'
   config.UserPassword = '123456789'
  } else if (env == 'qa') {
   
  }
  // se Agrega en el encabezado  el token de autenticacion aunque no
  var accessToken =  karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken
  karate.configure('headers',{Authorization:'Token '+accessToken })
  return config;
}