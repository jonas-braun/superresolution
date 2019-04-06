# Superresolution Comparison

Compare results of a superresolution algorithm in practice.

Dependencies:
* Python3
* Theano
* Lasagne
* GPU

The `install.sh` scipt sets up an environment and compiles a compatible python version. It is used to set up GPU support for theano/lasagne on a scientific HPC compute cluster based on the Torque batch job scheduler.

neural-enhance v0.3 (https://github.com/alexjc/neural-enhance) is the neural net used for photo superresolution. The result of the x4 magnification is compared against cubic interpolation. The test image is a 90% quality jpeg photo.

!["image-crop-1"](crop1-compare.jpg?raw=true)

On the left is the original image, scaled up with the bi-cubic interpolation algorithm. On the right is the neural-enhance superresolution image.
The edges and contrasts are enhanced nicely, but there is a huge problem with amplification of the jpeg-artifacts in the image. This greatly influences the power and usability of the algorithm in practice. The original paper compares the enhanced images against un-interpolated, pixelated images. This makes the effect definitely stunning but maybe not a very fair comparison.

!["image-crop-1-smooth"](crop1-compare-smooth.jpg?raw=true)

Using the selective gaussian filter to reduce noise in the enhanced image (despeckle) produces the image on the right. The left image is still the original interpolated image. This smoothing filter may be useful in some applications but definitely obscures some of the detail of the enhanced image.

!["image-crop-2-3-smooth"](crop23-compare-smooth.jpg?raw=true)

Two more crops from the photo are shown. The left are the original, interpolated images and on the right are the enhanced images. The top right image is left as-is after enhancement since the motif is not sensitive to the same noise as the first example. The bottom right image is smoothed. Overall the model is suitable for enhancement of a jpg-compressed image, yet some noise filtering has to be applied.
