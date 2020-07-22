// const
// final
// var
// dynamic
// String, int, etc

// "adjacent" " string " "literals" " join together"
// """multiline string"""
// r"raw string"

// []
// ... and ...?
// [if (true) 1, for (var i in someList) i]

// const emptySet = <String>{};
// ... and ...?
// {if (true) 1, for (var i in someList) i};

// const emptyMap = <String, String>{};
// ... and ...?
// {if (true) "a": "b", for (var i in someList) i: i}

// #symbol

// ReturnType functionName(TypeName argumentName) { }
// ReturnType arrowFunction() => 1;
// ReturnType f(
//   int positional,
//   [int optionalPositional]
// }) { }
// ReturnType f(
//   int positional,
//   {int optionalNamed, @required int requiredNamed = 3}
// }) { }
// f(1, optionalNamed: 2, requiredNamed: 3);

// ~/ integer division

// a ??= 1
// Assign only when a is null.

// a ?? b
// If a is non-null, evaluate to a, otherwise evaluate to b.

// cascade
// a
// ..text = "a"
// ..class = "b";

// for (var i = 0; i < 10; ++i) { }
// for (var i in [1, 2, 3]) { }

// switch case has its own scope.

// Error is programming error; Exception is intended to be caught.

// try { }
// on ExceptionA { }
// on ExceptionB catch (e) { }
// on ExceptionB catch (e, s) { }
// catch (e) { rethrow; }
// finally { }

// class Point {
//   final num x;
//   final num y = 0;
//
//   Point(x, y) : x = x, y = y;
//
//   Point.directingConstructor(a) : this(a, a);
//
//   const Point.constantConstructor(this.x, this.y);
//
//   factory Point.factoryConstructor() {
//     // Return cached instances.
//   }
// }

// Use abstract class to define interface
// In the stdlib, there are many abtract classes.
// Usually, the constructors are all factory constructors.
// Uri and Cookie are examples.

// Mixin is a class extending Object and has no constructors.

// import <URI>;
// where <URI> is 'dart:...', 'package:...' or relative path.

// import ... as ident;
// import ... show ident;
// import ... hide ident;

// await Future
// await for (var i in Stream)

// typedef Name<T> = int Function(T t);
