echo "--------- START EXECUTE SCRIPT ---------"
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 376597958889.dkr.ecr.ap-southeast-1.amazonaws.com
docker compose stop
docker compose rm -f
docker image prune -f -a
echo "--------- VERIFY PROCESSING ---------"
docker compose up -d
echo "--------- DONE EXECUTE SCRIPT ---------"