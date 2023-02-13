import 'dart:math';

void main() {
  const myAge = 42;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print('isTeenager: $isTeenager');

  const maryAge = 30;
  const bothTeenagers = (maryAge >= 13 && maryAge <= 19) && isTeenager;
  print('bothTeenagers: $bothTeenagers');

  const reader = 'Bob Smith';
  const ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;
  print('rayIsReader: $rayIsReader');

  if (isTeenager) {
    print('Teenager');
  } else {
    print('Not a teenager');
  }

  const answer = (isTeenager) ? 'Teenager' : 'Not a teenager';
  print(answer);

  var counter = 0;
  while (counter < 10) {
    print('counter is $counter');
    counter++;
  }

  for (var i = 1; i <= 10; i++) {
    print(i * i);
  }

  const numbers = [1, 2, 4, 7];
  for (var number in numbers) {
    print(sqrt(number));
  }

  numbers.forEach((number) => print(sqrt(number)));
}
