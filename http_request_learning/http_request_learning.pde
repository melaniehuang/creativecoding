import http.requests.*;
String avatar;
PImage userAvatar;

void setup(){
  GetRequest get = new GetRequest("https://api.github.com/users/buntine");
  get.send();
    
  JSONObject json = parseJSONObject(get.getContent());
  
  if (json == null) {
    println("JSONObject could not be parsed");
  } else {
    avatar = json.getString("avatar_url");
    println(avatar);
    userAvatar = loadImage(avatar, "png");
  }

  size(250,250);
}

void draw(){
  image(userAvatar, 0, 0, width,height);
}