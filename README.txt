Category	Design Pattern	Description
Creational	Singleton	Ensures a class has only one instance and provides a global point of access to it.
	Factory Method	Defines an interface for creating an object but lets subclasses alter the type of objects created.
	Abstract Factory	Provides an interface for creating families of related or dependent objects without specifying their concrete classes.
	Builder	Separates the construction of a complex object from its representation, allowing the same construction process to create various representations.
	Prototype	Specifies the kinds of objects to create using a prototypical instance and creates new objects by copying this prototype.
Structural	Adapter	Allows incompatible interfaces to work together by converting the interface of a class into another interface that a client expects.
	Bridge	Separates an object’s abstraction from its implementation so that the two can vary independently.
	Composite	Composes objects into tree structures to represent part-whole hierarchies, allowing clients to treat individual objects and compositions uniformly.
	Decorator	Adds behavior to objects dynamically without affecting the behavior of other objects from the same class.
	Facade	Provides a simplified interface to a complex subsystem.
	Flyweight	Reduces the cost of creating and manipulating a large number of similar objects by sharing as much data as possible.
	Proxy	Provides a surrogate or placeholder for another object to control access to it.
Behavioral	Chain of Responsibility	Passes a request along a chain of handlers, where each handler either processes the request or passes it to the next handler in the chain.
	Command	Encapsulates a request as an object, thereby allowing for parameterization of clients with queues, requests, and operations.
	Iterator	Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.
	Mediator	Defines an object that encapsulates how a set of objects interact, promoting loose coupling by keeping objects from referring to each other explicitly.
	Memento	Captures and externalizes an object’s internal state without violating encapsulation, so that the object can be restored to this state later.
	Observer	Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
	State	Allows an object to alter its behavior when its internal state changes, appearing to change its class.
	Strategy	Defines a family of algorithms, encapsulates each one, and makes them interchangeable, allowing the algorithm to vary independently from clients that use it.
	Template Method	Defines the skeleton of an algorithm in a method, deferring some steps to subclasses, allowing subclasses to redefine certain steps without changing the algorithm's structure.
	Visitor	Represents an operation to be performed on the elements of an object structure, allowing you to define a new operation without changing the classes of the elements on which it operates.
Additional Notes:
* Creational Patterns: Focus on object creation mechanisms, trying to create objects in a manner suitable to the situation.
* Structural Patterns: Deal with object composition or how classes and objects are combined to form larger structures.
* Behavioral Patterns: Concerned with communication between objects, how objects interact, and distribute responsibility.


# DesignPattern
**Creational DesignPattern**
/*
 1)  **Singleton Pattern Definition:**

The Singleton Pattern ensures that a class has only one instance while providing a global access point to it.

**Key Characteristics:**

A private initializer prevents the direct instantiation of the class. A static instance variable holds the single instance. A global access method provides the instance.

**Use Cases**

Logging: Maintaining a single logger instance across the application. Database Connection: To ensure only one connection pool is created. Shared Resources: For global configurations, caches, or settings. Thread-Safe Operations: Centralized instance to prevent race conditions.

**Advantages**

Controlled Access: Ensures only one instance exists globally. Reduced Memory Usage: Avoids creating multiple instances of a resource-heavy object. Global Point of Access: Simplifies sharing data or resources. Lazy Initialization: The instance is created only when accessed, optimizing performance.

**Disadvantages**

Global State: Overusing singletons can lead to tightly coupled code and global dependencies.
            Difficult to Test: Hard to mock or replace singletons during unit testing, leading to brittle tests. Concurrency Issues: If not implemented carefully, thread-safety problems may arise. Hidden Dependencies: Makes dependencies less obvious, affecting code readability and maintainability.
*/

/*

2) **Factory Desing Pattern**
The Factory Pattern is a Creational Design Pattern that provides an interface for creating objects in a super class but allows subclasses to alter the type of objects that will be created.

It abstracts the instantiation logic, making it easier to manage and scale object creation in your application.

**Key Characteristics:**

Promotes loose coupling by delegating the responsibility of object creation to a factory class or method.

Useful when you have a common interface or superclass and want to decide the exact class to instantiate at runtime.

**Use Cases**
When the exact class to instantiate is determined at runtime:

For example, creating UI components based on user input or configuration.
Avoid tight coupling between client code and specific classes:

The factory provides a single entry point for object creation.
Centralized object creation:

Helps to manage complex creation logic in one place.

**Pros and Cons**
Pros
Encapsulation: Object creation logic is centralized, making the code cleaner and easier to maintain.
Loose Coupling: The client code doesn’t need to know the exact class to instantiate.
Scalability: Adding new types is straightforward—just add a new subclass and update the factory.

Cons
Complexity: Introduces additional layers of abstraction, which may be overkill for simple use cases.
Overhead: If the creation logic is trivial, a factory may unnecessarily complicate the code.

 */

**Structural Design Patterns in Swift**

Structural Design Patterns focus on how classes and objects are composed to form larger structures while ensuring flexibility and efficiency. These patterns help organize relationships between entities to achieve more reusable, scalable, and maintainable code.

**List of Structural Design Patterns**<br>
Adapter Pattern
Bridge Pattern
Composite Pattern
Decorator Pattern
Facade Pattern
Flyweight Pattern
Proxy Pattern

 ** Adapter Pattern**<br>
The Adapter Pattern is a structural design pattern that enables objects with incompatible interfaces to collaborate by providing a wrapper or adapter. This pattern is crucial when you want to integrate legacy code or third-party libraries into your current system without altering their source code.

**Adapter Pattern in Detail**<br>
The Adapter Pattern is a structural design pattern that enables objects with incompatible interfaces to collaborate by providing a wrapper or adapter. This pattern is crucial when you want to integrate legacy code or third-party libraries into your current system without altering their source code.

**Core Components of the Adapter Pattern**<br>
Target (Protocol or Interface)
Defines the domain-specific interface that the client uses.

**Client**
Works with objects through the Target interface.

**Adaptee**
Has an existing interface that needs to be adapted to fit the Target interface.

**Adapter**
Acts as a bridge by implementing the Target interface and internally using the Adaptee to fulfill the request.
