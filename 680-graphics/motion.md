# Motion

Motion can be defined using vectors - it is the (vector) addition of position and velocity vectors. An object is placed on the canvas at the position `(5,5)` in Cartesian coordinate system.

The overall animation runs at some refresh rate, which is about 60ms in modern browsers using the `requestAnimationFrame` function to run an animation using the canvas HTML element. 60 ms is all the time a browser has to finish all the calculations it needs in ordere to render the next screen i.e. to *repaint* the document. This includes everything of which the browser is in chanrge, not just animating one canvas element in a document somewhere in a tab, but includes doing all the JS calculations, CSS rendering, DOM manipulations, and what not. So 60 ms be cutting it too close sometimes.

An object is at the location `p₀` (object's initial point). We define a veclocity vector in terms of the both components, `vel_x` and `vel_y`, so we can control each axis independently; as opposed to having just the `vel` value set with a single number which is then interpreted as a pair of same numbers, e.g. `vel 5` would be `vel_x = 5` and `vel_y = 5`. If we did it like that we would be able to only achive diagonal motion in these directions: ↗, ↖, ↙ or ↘. In fact, not even these 4 directions - but only 2! because we wouldn't be able to have e.g. positive x-component and negative y-component needed for motion in the ↘ direction.
- (+x, +y) ↗
- (-x, +y) ↖
- (-x, -y) ↙
- (+x, -y) ↘

...we'd only have 2 possible directions:
- (+x, +y) ↗ diagonal at 45°
- (-x, -y) ↙ diagonal at -45° or 225° (in std angle measurement)

## Details of how velocity affect position

With the velocity vector separated in two components and denoted by `(x, y)` and the object at its initial position `p₀ = (5,4)`, we create motion by adding the velocity vector to the object's current position, *every frame* (on every refresh). If the velocity vector is defined as `v = (2, -3)`, the object's motion progresses in this way:

- init obj pos: p₀ = (5, 4)
- velocity vector: v = (2, -3)
- each frame the velocity vector is added to the currect object's position:

1. p₀ = (5, 4)              init obj pos
2. p₁ = p₀ + v
      = (5, 4) + (2, -3)
      = (5 + 2, 4 + (-3))
      = (5 + 2, 4 - 3)
      = (7, 1)              obj pos at frame#1
3. p₂ = p₁ + v
      = (7, 1) + (2, -3)
      = (7 + 2, 1 - 3)
      = (9, -2)             obj pos at frame#2
4. p₃ = p₂ + v
      = (9, -2) + (2, -3)
      = (9 + 2, -2 - 3)
      = (11, -5)            obj pos at frame#3
5. etc.


The sequnce of points the object traverses
- p₀ = (5, 4)
- p₁ = (7, 1)
- p₂ = (9, -2)
- p₃ = (11, -5)
- ...


```
       +y
       ↑
      ⁴┼                  ● p₀
       ┤
       ┤
      ¹┼                          ● p₁
-x ←───┼──┬───┬───┬───┬───┼───┬───┼───┬───┬───┬───┬───┬───┬───┬───┬─→ +x
       ┤  ¹       ³       ⁵       ⁷       ⁹      ¹¹
     ⁻²┼                                  ● p₂
       ┤
       ┤
     ⁻⁵┼                                          ● p₃
       ┤
       ↓
      -y
```


## Acceleration

Using just position and velocity vectors we can only describe *linear motion*. No matter the magnitude and direction of the velocity vector, the motion will be linear.

>Velocity is the change in position over time.

In order to achieve freer motion, we need to introduce acceleration.

>Acceleration is the change in velocity over time.

So acceleration will affect velocity, and velocity will affect position. This is the elementary setup of achieving motion, which can be made more complicated by introducing additional forces like gravity, friction, stiction, air resistance, etc., as well as introducing object properties that can affect, peraphs not motion as much as collisions, such as elasticity and mass.

Acceleration is also represented as a vector with x and y components, `acc_x` and `acc_y`.
