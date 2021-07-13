# jokes_docker
1. To build docker image run 
* docker build -t jokes . 

2. To run docker image run 

* docker run -e LOCATION='DC' --rm jokes --type programming   
    * location option: 'DC', 'NY', 'LA', 'other'
    * type options: general & programming