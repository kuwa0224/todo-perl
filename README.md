# How to build

```
docker build todo-perl .
```

# How to run

```
docker run --rm -ti -p5000:5000 todo-perl carton exec perl ./script/todo-server
```
