# データの前処理 （Pythonによるビジネスデータサイエンス 第2巻）

<img src="https://www.asakura.co.jp/goods_img/118261.jpg" width="200px" >

---

本リポジトリは朝倉書店発行書籍『[データの前処理](https://www.asakura.co.jp/books/isbn/978-4-254-12912-0/)』（[Pythonによるビジネスデータサイエンス](http://www.asakura.co.jp/G_11.php?sreiesname=349) 第2巻）のサポートサイトです。

---

## 目次
- [1. サンプルプログラム](#1-サンプルプログラム)
	- [1.1. ファイル構成](#11-ファイル構成)
	- [1.2. ダウンロード](#12-ダウンロード)

- [2. 実行環境の構築](#2-実行環境の構築)
	- [2.1. Pythonのインストール](#21-pythonのインストール)
	- [2.2. パッケージのインストール](#22-パッケージのインストール)
		- [2.2.1. Windows](#221-windows)
		- [2.2.2. Mac](#222-mac)
		- [2.2.3. Linux(CentOS)](#223-linuxcentos)
		- [2.2.4. NYSOL(Mac,Linuxのみ)](#224-nysolmaclinuxのみ)

- [3. 実行方法](#3-実行方法)

- [4. Docker実行環境の利用](#4-docker実行環境の利用)
	- [4.1. Dockerのインストール](#41-dockerのインストール)
	- [4.2. Dockerでの実行方法](#42-dockerでの実行方法)
	- [4.3. Dockerでの実行方法（ローカルPCのポート番号を指定したい場合）](#43-dockerでの実行方法ローカルpcのポート番号を指定したい場合)
	- [4.4. Dockerでの実行方法（同じdockerコンテナを継続して使用したい場合）](#44-dockerでの実行方法同じdockerコンテナを継続して使用したい場合)

- [5. 関連リンク集](#5-関連リンク集)
	- [5.1. 共通](#51-共通)
	- [5.2. 公的統計](#52-公的統計)
	- [5.3. マーケティング](#53-マーケティング)
	- [5.4. ファイナンス](#54-ファイナンス)
	- [5.5. 自然言語処理](#55-自然言語処理)

---



## 1. サンプルプログラム

### 1.1. ファイル構成

サンプルプログラムはjpyter notebook(もしくはjupyter lab)で動作するipynbの形式で配布しています。以下に示したインストール方法を参考に実行環境を構築しコードを実行してください。

|フォルダ名   |説明  |
|:--          |:--   |
|`Chapter_2`  |2章「データの収集」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_3`  |3章「表構造データの処理技術」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_4`  |4章「実践：公的統計」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_5`  |5章「実践：マーケティング」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_6`  |6章「実践：ファイナンス」で使用するデータと`.ipynb`形式のノートブック   |
|`Chapter_7`  |7章「実践：自然言語処理」で使用するデータと`.ipynb`形式のノートブック   |
|`Appendix_A`  |付録A「付録A：Pythonの基礎」で使用するデータと`.ipynb`形式のノートブック |

### 1.2. ダウンロード

このページの上の緑の「Code」ボタンから「Download ZIP」でZIPファイルを作業をするフォルダにダウンロードし解凍してください。もしくは、以下に示す通り、`git`コマンドで`clone`して利用してください。

`git`がインストールされていない場合は下記サイトを参照してインストールしてください。

* [https://git-scm.com/book/ja/v2/使い始める-Gitのインストール](https://git-scm.com/book/ja/v2/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-Git%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

サンプルプログラムをダウンロード（clone）する作業用のフォルダ/ディレクトリを適当に作成してください。  
作成できたら下記コマンドを実行してください。サンプルプログラムがダウンロード（clone）されます。  
※`[作業用フォルダ/ディレクトリへのパス]`の部分は作成した作業用フォルダ/ディレクトリのパス（絶対パスもしくは相対パス）に置き換えてください。
```bash
cd [作業用フォルダ/ディレクトリへのパス]
git clone https://github.com/asakura-data-science/preprocessing.git .
```



## 2. 実行環境の構築
ご自身でライブラリ等をインストールせずに、インストール済みのDockerイメージを利用される場合は、[4. Docker実行環境の利用](#4-docker実行環境の利用)を参照してください。Docker環境を使えばWindows環境でもNYSOLライブラリを使用できます。

### 2.1. Pythonのインストール

`Python 3`がインストールされていない場合は`Python 3`をインストールします。

下記コマンドを実行して`Python 3`がインストールされているか確認します。
```bash
python --version
```
> コマンドプロンプト（Windows環境の場合）／ターミナル（Mac/Linux環境の場合）を起動して下記コマンドを入力し、enter/returnキーを押して実行してください。
> 以降、「コマンドを実行する」という表現は、コマンドプロンプトもしくはターミナル上でのコマンド実行を表します。

`Python 3.x.x`のように表示されれば`Python 3`がインストールされています。  
`python2: command not found`のように表示された場合は、下記サイトを参照して`Python 3`をインストールしてください。

* Window環境へのインストール [https://www.python.jp/install/windows/index.html](https://www.python.jp/install/windows/index.html)
* Mac環境へのインストール [https://www.python.jp/install/macos/index.html](https://www.python.jp/install/macos/index.html)
* Linux(Ubuntu)環境へのインストール [https://www.python.jp/install/ubuntu/index.html](https://www.python.jp/install/ubuntu/index.html)
* Lunux(CentOS)環境へのインストール [https://www.python.jp/install/centos/index.html](https://www.python.jp/install/centos/index.html)


### 2.2. パッケージのインストール

本書内で利用するPythonパッケージをインストールします。以下では、Windows, Mac, Linuxに分けてその方法を示します。また、NYSOLのインストールについても最後に説明しています。

なお、Linuxについては`CentOS`のインストール方法のみ紹介しています。`CentOS`以外のディストリビューションのLinuxについては本ページでのインストール方法を参考に、各ライブラリのインストールガイドなどに沿ってインストールを行ってください。

#### 2.2.1. Windows
WindowsではAnacondaをインストールし、Anacondaに同梱されていないライブラリをpipで追加インストールします。
1) anaconda3のインストール
https://www.anaconda.com/products/individual
よりPython3.8 の64-Bit Graphical Installerをダウンロードしてインストールしてください。

2) pipのアップグレード
インストールに用いる`pip`コマンドは頻繁に更新されていますので、まず`pip`コマンド自体をアップグレードしておきます。  

```bash
pip install -U pip
```

3) anacondaに入っていないライブラリのインストール
WindowsメニューのAnaconda3(64-bit)よりAnaconda Powershell Prompt(anaconda3)を起動して以下のインストールしてください。
7章の「実践：自然言語処理」の章末問題で利用する`MeCab`と`Juman`についてはインストールが簡単ではないので省略しています。ネット上に詳細な解説記事がありますので検索し参照してください。
以下のPS>はPowershellのプロンプトを表しています。
```bash
PS> pip install python-Levenshtein
PS> pip install spacy
PS> python -m spacy download en_core_web_sm
PS> install sudachipy sudachidict_core
PS> install wordcloud
PS> install janome
PS> install nagisa
```
動作確認したWindowsのバージョン：
* Windows 10 Pro version 20H2(OSビルド19042.964)
* Windows 10 Home version 1803

(Windows Homeでは、nagisaのインストールではコンパイル済のパッケージ(wheel)が用意されていないため、コンパイラが必要となります。)

#### 2.2.2. Mac

1) pipのアップグレード
<br>インストールに用いる`pip`コマンドは頻繁に更新されていますので、まず`pip`コマンド自体をアップグレードしておきます。  

```bash
pip install -U pip
```

2) Homebrewのインストール
<br>Homebrewによるアプリケーションのインストールをしているため、以下のサイトを参考にHomebrewをインストールしてください。
[https://brew.sh/index_ja](https://brew.sh/index_ja)


3) 本書のプログラムを実行するために必要なライブラリ
<br>次に下記コマンドを実行し、各パッケージをインストールします。
```bash
pip install pandas
pip install numpy
pip install bs4
pip install xlrd
pip install pymysql
pip install python-Levenshtein-wheels
pip install matplotlib
pip install seaborn
pip install spacy
python3 -m spacy download en_core_web_sm
pip install sudachipy sudachidict_core
pip install wordcloud
pip install networkx
pip install janome
pip install nagisa
pip install mlxtend
pip install jupyterlab

# Mecabの環境構築
brew install mecab
wget -O mecab-ipadic-2.7.0-20070801.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7MWVlSDBCSXZMTXM'
tar zxfv mecab-ipadic-2.7.0-20070801.tar.gz
cd mecab-ipadic-2.7.0-20070801
./configure --with-charset=utf8
sudo make install
pip install mecab-python

# JumanとKNPの環境構築
brew install jump
pip install pyknp
```

#### 2.2.3. Linux(CentOS)

1) pipのアップグレード
<br>インストールに用いる`pip`コマンドは頻繁に更新されていますので、まず`pip`コマンド自体をアップグレードしておきます。  

```bash
pip install -U pip
```

2) ライブラリのコンパイルなどで必要なツール
<br>下記コマンドを実行してインストールします。

```bash
sudo yum install wget
sudo yum install cmake
 ```

3) 本書のプログラムを実行するために必要なライブラリ
<br>次に下記コマンドを実行し、各パッケージをインストールします。

```bash
pip install pandas
pip install numpy
pip install bs4
pip install xlrd
pip install pymysql
pip install python-Levenshtein-wheels
pip install matplotlib
pip install seaborn
pip install spacy
python -m spacy download en_core_web_sm
pip install sudachipy sudachidict_core
pip install wordcloud
pip install networkx
pip install janome
pip install nagisa
pip install mlxtend
pip install jupyterlab

# Mecabの環境構築
## Mecabのインストール
wget -O mecab-0.996.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
tar zxvf mecab-0.996.tar.gz
cd mecab-0.996./configure --with-charset=utf8
make
sudo make install
## Mecab辞書のインストール
wget -O mecab-ipadic-2.7.0-20070801.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7MWVlSDBCSXZMTXM'tar zxfv mecab-ipadic-2.7.0-20070801.tar.gzcd mecab-ipadic-2.7.0-20070801
./configure --with-charset=utf8
make
sudo make install
## mecab-pythonのインストール
pip install mecab-python

# JumanとKNPの環境構築
## Juman++のインストール
wget https://github.com/ku-nlp/jumanpp/releases/download/v2.0.0-rc3/jumanpp-2.0.0-rc3.tar.xz
tar xvf jumanpp-2.0.0-rc3.tar.xz
cd jumanpp-2.0.0-rc3
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local
make
sudo make install
## pyknpのインストール
pip install pyknp
```


#### 2.2.4. NYSOL(Mac,Linuxのみ)
1) NYSOLの特徴
<br>NYSOL（「にそる」と読む）は、データマイニング（大規模データの探索的な知識発見手法）を柔軟に実施することを目的に開発されてきたソフトウェアです。それをPythonで利用できるようにしたのがnysol_pythonで、いくつかのライブラリ群から構成されます。その中でも大規模CSVデータを高速かつ柔軟に処理する目的で開発されたライブラリがmcmd（「えむこまんど」と読む）で、`nysol.mcmd`で参照できます。mcmdは、pandasで記述された多くの処理を実現でき、以下のような特徴を持ちます。

* 利点
	* メモリに収まらないような大規模データでも処理可能
	* テキスト処理を基本とするのでデータ型をほとんど意識しなくてよい。
	* コマンドラインでもほぼ同じ書式で利用できる。
* 欠点
	* 現在のところUnix系OSでしか動作せず、Windows環境では利用できない。
	* ネット上で参照できるドキュメントが少ない。

2) サンプルプログラム
<br>mcmdによるサンプルプログラムは、オリジナルのプログラム名に'_mcmd'を加えたファイル名で同梱しています。例えば、'3/3-2_mcmd.ipynb'というコードは、オリジナルの'3/3-2.ipynb'と同じ処理をmcmdで記述したものです。
Windows環境で利用するには仮想環境の[Docker](#4-docker実行環境の利用)を利用してください。
Mac/Linux環境で`nysol`ライブラリを使用したい場合は追加で下記をインストールします。
<!-- コメント:Dockerの利用方法（今回のレポジトリのリンクなどを記述する) -->

3) Macでインストール
```bash
# 以下のライブラリをHomebrewでインストールする。
brew install autoconf
brew install automake
brew install libtool
brew install boost

# nysol_pythonのインストール
pip install nysol
```

4) Linux(CentOS)でインストール
```bash
# 以下のライブラリをyumでインストールする。
sudo yum update
sudo yum groupinstall "Development Tools"
sudo yum install boost-devel
sudo yum install libxml2-devel

# nysol_pythonのインストール
pip install nysol
```


## 3. 実行方法

下記コマンドを実行して、`jupyterlab`を起動してください。

```bash
cd [作業用フォルダ/ディレクトリへのパス]
jupyter-lab
```

すると、Webブラウザが起動してjupyterlabのページが開き、サンプルプログラムのフォルダ構成が表示されます。  
jupyterlabの使用方法については、本書籍 付録B「Jupyterを使ったプログラミング環境」をご覧ください。


## 4. Docker実行環境の利用

### 4.1. Dockerのインストール

`Docker`がインストールされていない場合は下記サイトを参照してインストールしてください。

* Window環境へのインストール
	* Windows 10 の場合
		* [https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)
		* (日本語サイト)
			* Windows 10 Pro, Enterprise, Education :  [https://docs.docker.jp/docker-for-windows/install.html](https://docs.docker.jp/docker-for-windows/install.html)
			* Windows 10 Home : [https://docs.docker.jp/docker-for-windows/install-windows-home.html](https://docs.docker.jp/docker-for-windows/install-windows-home.html)
	* Windows 10 以外, もしくは上記でうまくインストールできなかった場合は`Docker Toolbox`をインストールします。
		* [https://www.docker.com/products/docker-toolbox](https://www.docker.com/products/docker-toolbox) <br>※`Docker Toolbox`の概要はこちらのサイトを参照してください。[https://docs.docker.jp/toolbox/overview.html?highlight=toolbox](https://docs.docker.jp/toolbox/overview.html?highlight=toolbox)
* Mac環境へのインストール
	* [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/)
	* (日本語サイト) [https://docs.docker.jp/docker-for-mac/install.html](https://docs.docker.jp/docker-for-mac/install.html)
* Linux(Ubuntu)環境へのインストール [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)
* Lunux(CentOS)環境へのインストール [https://docs.docker.com/engine/install/centos/](https://docs.docker.com/engine/install/centos/)

<br>下記コマンドを実行して`Docker`がインストールされているか確認できます。
```bash
docker --version
```

※Windows 10の場合はデスクトップにある「Docker for Windows」、`Docker Toolbox`を使用する場合はデスクトップにある「Docker Quickstart Terminal」を起動します。コマンドプロンプトと同様の画面が開きますので、そこでコマンドを実行します（以下、`Docker`の操作について同様）。

### 4.2. Dockerでの実行方法

下記のdockerコマンドを実行すると、本書用に作成したDockerイメージがダウンロードされ、コンテナが起動します。Dockerイメージのダウンロードはネットワーク環境によって5〜20分ほど要します。また、Dockerイメージのサイズが9GB近くありますので、ディスクの空き容量が十分にあるか確認してから実行してください。
```bash
docker run --rm asakurads/preprocessing:1.0
```

画面に表示される実行ログに`http://127.0.0.1:8888/lab`という表示が出力されればjupyterlabの起動完了です。

Webブラウザを起動して下記URLを入力するとjupyterlabのページが開き、サンプルプログラムのフォルダ構成が表示されます。  
jupyterlabの使用方法については、本書籍 付録B「Jupyterを使ったプログラミング環境」をご覧ください。

[http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab)

### 4.3. Dockerでの実行方法（ローカルPCのポート番号を指定したい場合）

ローカルPCのポート番号8888が別のプロセスで使用されている場合はdockerコンテナの起動コマンドを下記のように変更してください。下記オプションの`xxxx`の部分にローカルPCで使用可能なポートを指定します。
```bash
docker run --rm -p xxxx:8888 asakurads/preprocessing:1.0
```
WebブラウザのURLは下記になります（xxxxは上記コマンドで指定したポート番号）。

[http://127.0.0.1:xxxx/lab](http://127.0.0.1:xxxx/lab)

### 4.4. Dockerでの実行方法（同じdockerコンテナを継続して使用したい場合）

上記4.2、4.3のdockerコマンドで起動したコンテナは`--rm`オプションが指定されているため、コンテナ終了時に自動的に削除されます（dockerコマンドを実行するごとに新しいコンテナが作成されます）。

起動したdockerコンテナを削除せずに継続して使用したい場合は下記dockerコマンドで起動します。`--rm`オプションを外し、`--name`オプションでコンテナ名（ここではasakura_pre）を指定します。また、`-d`オプションでバックグラウンド実行になります。
```bash
docker run -d -p 8888:8888 --name asakura_pre asakurads/preprocessing:1.0
```

dockerコンテナの操作で最低限必要なコマンドを下記に紹介しておきます（asakura_preはコンテナ名）。その他のdocker操作コマンドは[公式サイト](https://www.docker.com/)（[日本語](https://docs.docker.jp/)）やネットで調べてください。
```bash
#コンテナの実行ログの出力
docker container logs -f asakura_pre

#コンテナの起動
docker container start asakura_pre

#コンテナの停止
docker container stop asakura_pre

#コンテナの削除（コンテナが停止した状態でしか削除できない）
docker container rm asakura_pre
```



## 5. 関連リンク集

### 5.1. 共通
- Python: https://www.python.jp/
- pandas: https://pandas.pydata.org/
- jupyter: https://jupyter.org/
- NYSOL: https://www.nysol.jp/
- Docker: https://www.docker.com/     &emsp;(日本語サイト) https://docs.docker.jp/

### 5.2. 公的統計
- RESAS: https://resas.go.jp/#/29/29443
- 総務省統計局: https://www.stat.go.jp/

### 5.3. マーケティング
- QPR: https://www.macromill.com/service/database_research/qpr.html

### 5.4. ファイナンス
- 金融データソリューションズ: https://www.fdsol.co.jp/index.html
- 日経NEEDS: http://www.nikkei.co.jp/needs/
- JPXデータクラウド: http://db-ec.jpx.co.jp/
- Yahoo!ファイナンス: https://finance.yahoo.co.jp/
- モーニングスター: https://www.morningstar.co.jp/
- Quandl: https://www.quandl.com/
- Bloomberg: https://www.bloomberg.co.jp/
- factset: https://www.factset.com/

### 5.5. 自然言語処理
- newsapi: https://newsapi.org/
- Spacy: https://spacy.io/
- Sudachi: https://github.com/WorksApplications/Sudachi
- Janome: https://mocobeta.github.io/janome/
- nagisa: https://github.com/taishi-i/nagisa
- mecab: https://taku910.github.io/mecab/
- JUMAN: https://nlp.ist.i.kyoto-u.ac.jp/?JUMAN
