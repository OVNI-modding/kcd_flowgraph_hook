#!/bin/bash

echo "<Graph Description=\"\" Group=\"\" enabled=\"1\" MultiPlayer=\"ClientServer\">" > SYS_Main.xml
echo "<Nodes><Node Id=\"100000\" Class=\"UI:Action:Start\" pos=\"0,-150,0\"><Inputs UseAsState=\"1\"/></Node>" >> SYS_Main.xml
for i in {1..1000}; do echo "<Node Id=\"$((100000+i))\" Class=\"UI:Action:Control\" pos=\"0,${i},0\"><Inputs uiActions_UIAction=\"SYS_Main_${i}\" Strict=\"0\" Args=\"\"/></Node>" >> SYS_Main.xml ;done
echo "</Nodes><Edges>" >> SYS_Main.xml
for i in {1..1000}; do echo "<Edge nodeIn=\"$((100000+i))\" nodeOut=\"100000\" portIn=\"Start\" portOut=\"StartAction\" enabled=\"1\"/>" >> SYS_Main.xml ;done
echo "</Edges><GraphTokens /></Graph>" >> SYS_Main.xml
