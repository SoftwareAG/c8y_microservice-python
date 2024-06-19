FROM python:alpine

COPY application.py /
RUN pip install flask waitress

ENTRYPOINT ["python"]
CMD ["-u", "application.py"]
