#!/bin/bash -x

lengthInFeet=$(bc <<< "scale=3; 42/12")
areaInSqmt=$(bc <<< "scale=4; (60*40)/10.764")
areaInAcres=$(bc <<< "scale=4; (25*$areaInSqmt)/4047")
