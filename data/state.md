# State

A program is **stateful** if it can retain data (remember previous events, interactions, calculations). That data recall is known as the **system state**.

The set of states a system can occupy is known as its **state space**.

In a *discrete system*, the state space is *countable* and often *finite*, and the system's internal behaviour or interaction with its environment consists of separately occurring individual actions or events, such as accepting input or producing output, that may or may not cause the system to change its state. Examples of such systems are *digital logic* circuits and components, *automata* and *formal language*, *computer programs* and *computers*.

> The **output** of a systems *at any time* is completely **determined by** its current **input** and its **state**.



## A/D
A discrete, or digital, system is a system with countable number of states, as opposed to continuous, or analog, system.

The discrete vs continuous is embodied in the continuum: integers are discrete values that form a infinite but countable set (enumerable infinity); real numbers are continuous and they form a innumerable infinite set.

Finite discrete systems are *finite state machines* (FSM) and they are naturally modeled with a *directed graph*. A computer is a discrete system, just a glorified FSM with a countable number of states, therefore it can be completely described using precise mathematical models. We can determine computer's output at any moment, for it is completely conditioned by its current input and state.

Despite being a discrete system, computers are used to model continuous systems with the help of sampling. **Sampling** is the process of taking measurements of an analog signal at frequent time intervals, in order to convert it (approximate it) into a digital form; the higher the sampling frequency, the better the quality (of conversion). This analog/digital (A/D) conversion is ubiquitous in computer systems, representing the bridge between discrete and analog systems.




---

https://www.wikiwand.com/en/State_(computer_science)
