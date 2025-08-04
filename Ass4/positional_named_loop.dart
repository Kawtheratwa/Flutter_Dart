



import 'dart:io';
void main()
{
List <String> items =[];
items.add("Apple");
items.add("Orange");
items.add("Graps");

printItems(items ,'Fruits');
}

void printItems(List <String>  items , [ String title = "Item List"] )
{

print('$title');
int i=1;
items.forEach((item)
{
  print('$i. $item');
 i++;
});

}

