Clone the repo

```
git clone git@github.com:hpatoio/counter.git
cd counter
```

Build the image

```
docker build -t ecdemo .
```

Get the dependencies

```
docker run --rm -it -v `pwd`:/usr/src/phoenix/ ecdemo mix deps.get
```

Install assets

```
docker run --rm -it -v `pwd`:/usr/src/phoenix/ ecdemo npm --prefix assets/ install
```

Run the application

```
docker run --rm -it -v `pwd`:/usr/src/phoenix/ -p 4000:4000 ecdemo mix phx.server
```

Visit your app at http://localhost:4000/counter