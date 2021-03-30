FROM nysol/core:0.4-b2

RUN update-crypto-policies --set LEGACY

RUN dnf -y install wget \
 && dnf -y install cmake \
 && dnf clean all \
 && rm -rf /var/cache/yum

#Mecab, Mecab-ipadic, Juman++
RUN cd /work \
 && wget -O mecab-0.996.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE' \
 && tar zxvf mecab-0.996.tar.gz \
 && cd mecab-0.996 \
 && ./configure --with-charset=utf8 \
 && make \
 && make install \
    \
 && cd /work \
 && wget -O mecab-ipadic-2.7.0-20070801.tar.gz 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7MWVlSDBCSXZMTXM' \
 && tar zxfv mecab-ipadic-2.7.0-20070801.tar.gz \
 && cd mecab-ipadic-2.7.0-20070801 \
 && ./configure --with-charset=utf8 \
 && make \
 && make install \
    \
 && cd /work \
 && wget https://github.com/ku-nlp/jumanpp/releases/download/v2.0.0-rc3/jumanpp-2.0.0-rc3.tar.xz \
 && tar xvf jumanpp-2.0.0-rc3.tar.xz \
 && cd jumanpp-2.0.0-rc3 \
 && mkdir build \
 && cd build \
 && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local \
 && make \
 && make install \
 && rm -rf /work/*

RUN pip install --upgrade pip \
 && pip install spacy \
 && python -m spacy download en_core_web_sm \
 && pip install sudachipy sudachidict_core \
 && pip install wordcloud \
 && pip install janome \
 && pip install nagisa \
 && pip install mlxtend \
 && pip install mecab-python \
 && pip install pyknp

EXPOSE 8888
ENV HOST 0.0.0.0
COPY Chapter_2 /work/Chapter_2
COPY Chapter_3 /work/Chapter_3
COPY Chapter_4 /work/Chapter_4
COPY Chapter_5 /work/Chapter_5
COPY Chapter_6 /work/Chapter_6
COPY Chapter_7 /work/Chapter_7
COPY Appendix_A /work/Appendix_A
WORKDIR /work
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''
