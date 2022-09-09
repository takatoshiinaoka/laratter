# laratter

## 環境構築

Laravel Breezeのインストール
```
./vendor/bin/sail composer require laravel/breeze --dev
./vendor/bin/sail php artisan breeze:install
```

その他必要なパッケージをインストールしてビルド
```
./vendor/bin/sail npm install
./vendor/bin/sail npm run build
```

マイグレート
```
./vendor/bin/sail php artisan migrate
```

テストユーザを作成
```
./vendor/bin/sail php artisan db:seed
```

## 使い方
コンテナ起動 laravel([localhost](http://localhost/)) phpmyadmin([localhost:8080](http://localhost:8080))
```
./vendor/bin/sail up -d
```
コンテナ停止
```
./vendor/bin/sail down
```