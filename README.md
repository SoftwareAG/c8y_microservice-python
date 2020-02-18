# Hello World of Cumulocity IoT Microservices

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/43b50d865e48495996ee831f27459823)](https://app.codacy.com/app/manasesjesus/c8y_hw_microservice_python?utm_source=github.com&utm_medium=referral&utm_content=manasesjesus/c8y_hw_microservice_python&utm_campaign=Badge_Grade_Dashboard)

Cumulocity IoT microservice example developed using Python and Docker.

### Prerequisites

*   Local Docker installation
*   An account on [cumulocity.com](https://cumulocity.com). Create a free trial to test this example.

### Build

Execute the following commands to build the Docker image and save it as *image.tar*:

```shell
$ docker build -t python-microservice .
$ docker save python-microservice > "image.tar"
```

Then pack *image.tar* together with the manifest *cumulocity.json* into a ZIP file.

```shell
$ zip python-microservice cumulocity.json image.tar
```

The resulting *python-microservice.zip* file contains the microservice and it is ready to be uploaded to the Cumulocity IoT platform.

### Deployment

Deploy the microservice application (refer to [Adding own applications](https://cumulocity.com/guides/users-guide/administration/#a-name-adding-applications-a-adding-own-applications) in the Cumulocity IoT's User guide) and subscribe it afterwards.

It may take some minutes for the ZIP file to be uploaded. Once completed, the three endpoints of the microservice application can be tested.

### Execution

Use a web browser or a terminal command (e.g. cURL) to make a GET request to the microservice endpoints providing your user credentials.

```http
GET <tenant>.cumulocity.com/service/python-microservice/environment
```
