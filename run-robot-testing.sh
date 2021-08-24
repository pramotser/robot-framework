rm -rf report-result && \
python -m robot -L TRACE --outputdir ./report-result TestCase_CallMongoDb.robot && \
start ./report-result/report.html