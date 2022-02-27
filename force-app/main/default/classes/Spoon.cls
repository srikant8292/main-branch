public class Spoon {
    private static final String  api_url='https://api.spoonacular.com';
     private static final String  api_key='14adb08c32e844d18485d88f65c15718';    
    
  public static void getapiresponse(){
        Http http=new Http();

   HttpRequest req= new HttpRequest();
    req.setEndpoint(api_url+'/recipes/random?apiKey='+api_Key);
    req.setMethod('GET');
     HttpResponse response = http.send(req);


    System.debug('response'+response.getStatusCode());

    if(response.getStatusCode()==200){
     System.debug('response'+response.getBody());
       }
    }
    
     public static void getrescipebyIngradient(String Ingred){
        Http http=new Http();

   HttpRequest req= new HttpRequest();
    req.setEndpoint(api_url+'/recipes/findByIngredients?ingredients='+Ingred+'&apiKey='+api_Key);
         
      
         
         
         
    req.setMethod('GET');
     HttpResponse response = http.send(req);


    System.debug('response'+response.getStatusCode());

    if(response.getStatusCode()==200){
     System.debug('response'+response.getBody());
       }
    }
    
   public static void getrescipe(String receipeId){
        Http http=new Http();

   HttpRequest req= new HttpRequest();
    req.setEndpoint(api_url+'/recipes/'+receipeId+'/information?apiKey='+api_key);

    req.setMethod('GET');
     HttpResponse response = http.send(req);


    System.debug('response'+response.getStatusCode());

    if(response.getStatusCode()==200){
     System.debug('response'+response.getBody());
       }
    }

}