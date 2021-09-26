## What is it?
It allows to lower resolution of 3D elements of the game while UI and actual window size are left normal. So this helps low-end devices to enjoy the game and the game to be actually playable because UI text and other elements are still readable. Many games and game engines today have this feature and it can be done in Godot.

This repository contains a small demo project which shows it in work and it could be used as starting point for your 3D game(although I don't recommend it).  

![scale (3)](https://user-images.githubusercontent.com/26604491/134802088-213b2120-3625-4ec7-8e81-e112ce86007c.gif)

## How to use it?
If you want to use it in your project you can follow these steps:
1. Just copy **ResolutionScaling.gd** and **ResolutionScaling.tscn** to your project folder(following your file structure).
2. Instantiate **ResolutionScaling** scene under your **root** node(in demo it is a **Spatial** node called **Game**). *Godot should ask about broken dependency of the ResolutionScaling script. Fix the dependency and move to the next step.*
3. Set *Editable Children* to **ResolutionScaling** in the scene tree.
4. Move your 3D scene under the **Viewport** node.
5. Set **ResolutionScaling** rect *Size* the same as the project window size. Same with the **Viewport** *Size*.
6. In the project settings go to the **Display->Window->Stretch**. Set *Mode* to **2d**, and *Aspect* to **expand**.

At this point, it can be used. Change *Scale* variable at the **ResolutionScaling** script and boot the game. You should see scaled down(or up) resolution.

To use it dynamically you should call **change_scale** function.

## Additionally
This project also contains **UIResize.gd** script. I've used it to scale UI of the game with the window size so elements anchored to the right bottom stay at the right bottom of the screen. With such Stretch Mode and Aspect, this is the best way I've found.

1. Create a **Control** node. It will contain all UI elements. It should be a sibling of the **ResolutionScaling** node.
2. Set its *Size* to the project window size.
3. Attach **UIResize.gd**.

Now when you resize a window, the **Control** node will be changing size with it and all anchored elements will move accordingly.
