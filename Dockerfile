FROM jupyter/base-notebook
COPY docker.ipynb /home/jovyan/
COPY dataset.csv /home/jovyan/
WORKDIR /home/jovyan/
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
