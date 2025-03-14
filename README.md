This examples has been taken and used from the [this link](https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/lecture/22625196#overview)

 - First we created a Dockerfile which has the main codes for creating the image of our container.

- After creating the Dockerfile, we then proceed to building the image with: `docker build .` 

- When the image builded, then we can use to run the container with this image: `docker run -p 3000:3000 [image_id]` 
    - For this example, inside the container network our app uses port 3000. And from our host device or server to access this app, we again use port 3000.

    - And `Voilà`. Your app is ready at `localhost:3000`