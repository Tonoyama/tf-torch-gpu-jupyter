# tf-torch-gpu-jupyter
GPU版のTensorflow・PyTorch・KerasをJupyter Labで使えるようにした。

CPU版も作成。

## 使い方

`docker-compose.yml`の`volumes`にある`- ~/Dev/ML:/tf`では、ホストPCのディレクトリをマウントしています。
適宜、自身の環境に合わせてください。

環境をビルド(いきなりupしても良い)
```shell
docker-compose build
```

環境を起動
```shell
docker-compose up
```

バックグラウンドで起動
```shell
docker-compose up -d
```

コンテナを止める
```shell
docker-compose down
```

２回目のビルド
```shell
docker-compose build --no-cache
```

## 追加でインストールしたい場合

起動したコンテナ名を確認する
```shell
docker container ls -a
```

```
CONTAINER ID   IMAGE                               COMMAND                  CREATED          STATUS                      PORTS                               NAMES
9db07dda0f34   docker-tf_notebook                  "/bin/bash -c 'jupyt…"   8 minutes ago    Up 27 seconds               0.0.0.0:8888->8888/tcp              docker-tf_notebook_1
```
`NAMES`と書かれているのがコンテナ名。

コンテナのシェルに入る
```shell
docker exec -it コンテナ名 /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"
```

出る時
```shell
exit
```