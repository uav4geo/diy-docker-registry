docker run -d -p 443:5000 --name registry -v $(pwd)/distribution:/etc/distribution -v $(pwd)/fs:/var/lib/registry -v $(pwd)/auth:/auth -e OTEL_TRACES_EXPORTER=none registry:3
