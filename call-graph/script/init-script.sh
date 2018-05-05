#!/bin/bash

export CALLGRAPH_LIB="$(echo `pwd`/lib/*.jar | tr ' ' ':')"
export CLASSPATH=$CLASSPATH:$CALLGRAPH_LIB

alias staticg="java -jar ${JAVACG_CALL_GRAPH}"
