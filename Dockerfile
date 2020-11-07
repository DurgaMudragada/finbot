FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip 
COPY . /app
WORKDIR /app

RUN pip3 install rasa

RUN pip3 install rasa[full]
RUN python3 -m spacy download en_core_web_md en
RUN python3 -m spacy link en_core_web_md en

#RUN chmod +x /app/start_services.sh
#CMD /app/start_services.sh


#RUN pip3 install slack
#RUN pip3 install slackclient

#CMD ["rasa", "run","--port", "5056" "--debug"]


#CMD ["docker" "run" "-p" "8000:8000" "rasa/duckling"]

EXPOSE 5006 

EXPOSE 5056
