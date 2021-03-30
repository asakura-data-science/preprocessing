# データの前処理 （Pythonによるビジネスデータサイエンス 第2巻）

<img src="https://www.asakura.co.jp/goods_img/118261.jpg" width="200px" >

---

本リポジトリは朝倉書店発行書籍『[データの前処理](https://www.asakura.co.jp/books/isbn/978-4-254-12912-0/)』
（[Pythonによるビジネスデータサイエンス](http://www.asakura.co.jp/G_11.php?sreiesname=349) 第2巻）のサポートサイトです。


## サンプルコード

### ファイル構成

サンプルコードの解説については本書籍をご覧ください。


|フォルダ名   |説明  |
|:--          |:--   |
|`Chapter_2`  |2章「データの収集」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_3`  |3章「表構造データの処理技術」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_4`  |4章「実践：公的統計」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_5`  |5章「実践：マーケティング」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_6`  |6章「実践：ファイナンス」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_7`  |7章「実践：自然言語処理」で使用するデータと`.ipynb`形式のノートブック   |
|`Appendix_A`  |付録A「付録A：Pythonの基礎」で使用するデータと`.ipynb`形式のノートブック |


## 実行環境の構築と実行方法

サンプルコードの実行環境を構築する方法は
「[A.ご自身でライブラリ等をインストールされる場合](#aご自身でライブラリ等をインストールされる場合)」と
「[B.ライブラリ等すでにインストール済みのDockerイメージを利用される場合](#bライブラリ等すでにインストール済みのdockerイメージを利用される場合)」の2パターン用意しています。
どちらの方法を選択するかは読者に委ねますが、
Windows環境でNYSOLライブラリを使用してみたい読者は「[B.ライブラリ等すでにインストール済みのDockerイメージを利用される場合](#bライブラリ等すでにインストール済みのdockerイメージを利用される場合)」を選択してください。


### A.ご自身でライブラリ等をインストールされる場合

#### 1. `Python 3`がインストールされていない場合は下記サイトを参照してインストールしてください。

* Window環境へのインストール [https://www.python.jp/install/windows/index.html](https://www.python.jp/install/windows/index.html)
* Mac環境へのインストール [https://www.python.jp/install/macos/index.html](https://www.python.jp/install/macos/index.html)
* Linux(Ubuntu)環境へのインストール [https://www.python.jp/install/ubuntu/index.html](https://www.python.jp/install/ubuntu/index.html)
* Lunux(CentOS)環境へのインストール [https://www.python.jp/install/centos/index.html](https://www.python.jp/install/centos/index.html)


#### 2. 本書内で利用するPythonパッケージをインストールします。

インストールに用いる`pip`コマンドは頻繁に更新されていますので、まず`pip`コマンド自体をアップグレードしておきます。  
コマンドプロンプト（Windows環境）/ターミナル（Mac/Linux環境）を起動して下記コマンドを入力し、enter/returnキーを押して実行してください。  
以降、「コマンドを実行する」という表現は、コマンドプロンプト（Windows環境）/ターミナル（Mac/Linux環境）上でのコマンド実行を表します。

```bash
pip install -U pip
```

次に下記コマンドを実行し、各パッケージをインストールします。
```bash
pip install numpy
pip install pandas
pip install matplotlib
pip install beautifulsoup4
pip install xlrd
pip install pymysql
pip install python-Levenshtein
pip install spacy
pip install wordcloud
pip install networkx
pip install jupyterlab
```

Mac/Linux環境で`NYSOL`ライブラリを使用したい場合は追加で下記をインストールします。
```bash
pip install nysol
```

#### 3. 本リポジトリのサンプルコードをPC環境にダウンロード（clone）します。

`git`がインストールされていない場合は下記サイトを参照してインストールしてください。

* [https://git-scm.com/book/ja/v2/使い始める-Gitのインストール](https://git-scm.com/book/ja/v2/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-Git%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

サンプルコードをダウンロード（clone）する作業用のフォルダ/ディレクトリを適当に作成してください。  
作成できたら下記コマンドを実行してください。サンプルコードがダウンロード（clone）されます。  
※`[作業用フォルダ/ディレクトリへのパス]`の部分は作成した作業用フォルダ/ディレクトリのパス（絶対パスもしくは相対パス）に置き換えてください。
```bash
cd [作業用フォルダ/ディレクトリへのパス]
git clone https://github.com/asakura-data-science/preprocessing.git .
```

#### 4. 実行方法

下記コマンドを実行して、`jupyterlab`を起動してください。

```bash
cd [作業用フォルダ/ディレクトリへのパス]
jupyter lab
```

すると、Webブラウザが起動してjupyterlabのページが開き、サンプルコードのフォルダ構成が表示されます。  
jupyterlabの使用方法については、本書籍 付録B「Jupyterを使ったプログラミング環境」をご覧ください。



### B.ライブラリ等すでにインストール済みのDockerイメージを利用される場合


