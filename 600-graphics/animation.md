# Mechanics :: Basics :: Animation

https://en.wikipedia.org/wiki/Animation

## Frame rate

https://en.wikipedia.org/wiki/Frame_rate

In CS, a problem with animation in general is its "moving pictures" nature: by showing a series of frames in rapid succession the eye (and mind) is tricked into believing that the motion is fluid. This treshold is about 25 fps (frames per second) for humans. Frame rate below this would make the viewers notice the jerky motion.

*Frame rate* is the measurement of how quickly a number of frames appears within a second, which is why it's unit is *frames per second* (fps).

Motion pictures, TV broadcast, streaming video content, and even smartphones use the standard frame rate of 24 fps.

The frame rate of computer monitors is about 60 fps, denoted as a *refresh rate* of 60 Hz.

**Frame rate** (expressed in frames per second, FPS) is typically the frequency (rate) at which consecutive images (frames) are captured or displayed.

This definition applies to film and video cameras, computer animation, and motion capture systems. In these contexts, frame rate may be used interchangeably with *frame frequency* and *refresh rate*, which are expressed in hertz.

Additionally, in the context of computer graphics performance, FPS is the rate at which a system, particularly a GPU, is able to generate frames, and refresh rate is the frequency at which a display shows completed frames.

In electronic camera specifications frame rate refers to the maximum possible rate frames could be captured, but in practice, other settings (such as exposure time) may reduce the actual frequency to a lower number than the frame rate.

## Human vision

Further information: Motion perception
https://en.wikipedia.org/wiki/Motion_perception

The temporal sensitivity and resolution of human vision varies depending on the type and characteristics of visual stimulus, and it differs between individuals.

The human visual system can process 10 to 12 images per second and perceive them individually, while higher rates are perceived as motion.

Modulated light (such as a computer display) is perceived as stable by the majority of participants in studies when the rate is higher than 50 Hz. This perception of modulated light as steady is known as the **flicker fusion threshold**. However, when the modulated light is non-uniform and contains an image, the flicker fusion threshold can be much higher, in the hundreds of hertz.

With regard to *image recognition*, people have been found to recognize a specific image in an unbroken series of different images, each of which lasts as little as 13 milliseconds.

*Persistence of vision* sometimes accounts for very short single-millisecond visual stimulus having a perceived duration of between 100 ms and 400 ms. Multiple stimuli that are very short are sometimes perceived as a single stimulus, such as a 10 ms green flash of light immediately followed by a 10 ms red flash of light perceived as a single yellow flash of light.


---


When animating canvas in JS, for example, the motion of an object is achieved by increasing its position with the help of velocity and acceleration vectors. We can achieve linear motion using only velocity vector, but acceleration is needed to make freer motion. Sticking to just the velocity vector for this consideration: the velocity vector is added (using vector addition) to the position (vector), *each frame*. That way we get a new point where we place the object *each frame*. In some amount of time, we get a series of points of where to put the object. This means the object *jumps* from one position to the next, but this happens so fast we don't see the jerking motion, but more-less smooth transitions. However, for many things around animations (esp. collision detection), the fact that the objects are jumping is imperative!

One frame two objects may be at a safe distance from each other, but since **there is no information about the intermediate states between two successive frames**, the next frame these two objects may be *penetrating each other* in inconceivable ways! If objects are small and move very fast, it can happen that an object goes clean through another object (in between frames) without triggering the collision detection routine that is supposed to calculate the way they collide and the way they bounce off of each other.
