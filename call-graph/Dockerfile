FROM java:jdk

ENV JAVACG_CALL_GRAPH=lib/javacg-0.1-SNAPSHOT.jar
ENV JAVACG_STATIC_CG=lib/javacg-0.1-SNAPSHOT-static.jar
ENV JAVACG_DYNAMIC_CG=lib/javacg-0.1-SNAPSHOT-dycg-agent.jar
ENV HOME=/cg

WORKDIR $HOME 

COPY $JAVACG_CALL_GRAPH ./$JAVACG_CALL_GRAPH
COPY $JAVACG_STATIC_CG ./$JAVACG_STATIC_CG
COPY $JAVACG_DYNAMIC_CG ./$JAVACG_DYNAMIC_CG

COPY script/init-script.sh scripts/init-script.sh
COPY script/callgraph.sh scripts/callgraph.sh

RUN echo "alias staticg='java -jar `echo $JAVACG_STATIC_CG`'" >> ~/.bashrc
