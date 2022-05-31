use Animal;
use Cat;

$kenny = new Animal('dog', 'Kenny', 'black');
$kenny->getName();
$kenny->setName('FavoriteKenny');
$kenny->getName();

$tom = new Cat('Tom', 'gray'); #It is not necessary to specify the type of the animal - it is always defined in the cat inside the child class
