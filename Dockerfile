FROM nysol/core:0.3
EXPOSE 8888
ENV HOST 0.0.0.0
COPY Chapter_2 /work/Chapter_2
COPY Chapter_3 /work/Chapter_3
COPY Chapter_4 /work/Chapter_4
COPY Chapter_5 /work/Chapter_5
COPY Chapter_6 /work/Chapter_6
COPY Chapter_7 /work/Chapter_7
COPY Appendix_A /work/Appendix_A
RUN update-crypto-policies --set LEGACY
RUN pip install --upgrade pip
RUN pip install -U spacy
RUN pip install spacy[ja]
RUN python -m spacy download en_core_web_sm
RUN pip install wordcloud
WORKDIR /work
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''
