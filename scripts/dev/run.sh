#!/bin/bash
ENV="DEV"
# echo $ENV

REPORT_RESULT_DIR="./report-result/"$ENV

# echo $REPORT_RESULT_DIR
# cd ../.. 

pip3 install -r requirements.txt 

mkdir -p $REPORT_RESULT_DIR
cd $REPORT_RESULT_DIR

rm -rf *.html *.xml *.jpg *.png 

date

python3 -m robot.run -L TRACE -v env:$ENV --outputdir $REPORT_RESULT_DIR -i regression ../../testcases