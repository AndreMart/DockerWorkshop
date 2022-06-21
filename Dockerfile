FROM python:3.8.10
EXPOSE 5000
WORKDIR /flaskapp
COPY requirements.txt . 
RUN pip3 install -r requirements.txt
COPY . .
ENV ENV=dev
ENTRYPOINT ["python"]
CMD ["api.py"]
