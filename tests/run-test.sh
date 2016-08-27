pushd ..
#vagrant up
#./pastec.sh &
sleep 30

popd

# clear previous test results if any
rm actual.json


curl -X DELETE http://localhost:4212/index/images/1
image=logovisualink.png
curl -X PUT --data-binary @$image http://localhost:4212/index/images/1

curl -X POST --data-binary @$image http://localhost:4212/index/searcher > actual.json


curl -X POST -d '{"type":"CLEAR"}' http://localhos:4212/index/io

pushd ..
#vagrant halt
popd

result=`diff actual.json expected.json`


if [ -n "$result" ]; then
    exit 1
fi
