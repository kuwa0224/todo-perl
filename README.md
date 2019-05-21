# How to build

```
docker build todo-perl .
```

# How to start server

```
docker run --rm -ti -p5000:5000 -v $(pwd):. todo-perl carton exec perl ./script/todo-server
```

# How to enter

```
docker run --rm -ti -p5000:5000 -v $(pwd):. todo-perl bash
```
