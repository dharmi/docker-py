# docker-py
docker app with python + flask that is tuned to deploy on Opensource cloud foundry. 

# Build

	docker build -t docker-py .

# Run

	docker run -d -p 8080:8080 adobecloud/docker-py

# Test

	http://<ip-address>:8080
	


Note: if you using boot2docker, get the ip address by running
$ boot2docker ip

# CF Diego deploy

    cf docker-push pyserver adobecloud/docker-py -c "python hello.py”


