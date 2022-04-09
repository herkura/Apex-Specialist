//Integrating external services with apex 
// we make the callout using a trigger, but that is asynschronously
public class Callout
{
  @future(callout=true)// helps callout using a trigger 
  public static makeCallout()
  {
      HttpRequest request = new HttpRequest();
      String endpoint = ''; //set your endpoint URL
      
      request.setEndPoint(endpoint);
      request.setMethod('GET');
      
      //Send the HTTP request and get the response.
      HttpResponse response = new HTTP().send(request);
  }
}
