

import 'dart:io';
void main()
{
  registerUser("Kawther", "kawther@gmail.com");
}

void registerUser(String username , String email)
{
  if(email.contains('@'))
  print("Succes");
  else 
  {
    print("invalid");
  }
}