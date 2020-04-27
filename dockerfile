from python:2.7-stretch 
maintainer groupe1
COPY ./user/src/app
COPY ./student_age.py
copy ./student_age.json /data/

RUN apt-get update -y && apt-get install python-dev python3-dev libsasl2-dev python-dev libldap2-dev libssl-dev -y  
RUN pip install flask flask_httpauth flask_simpleldap python-dotenv 
 
CMD ["python", "./student_age.py"] 
EXPOSE 5000
 
