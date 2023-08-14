echo "--------- START EXECUTE SCRIPT ---------"
docker compose stop
docker compose rm -f
docker image prune -f -a
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 429660533268.dkr.ecr.ap-southeast-1.amazonaws.com
echo "--------- VERIFY PROCESSING ---------"
docker compose up -d
echo "--------- DONE EXECUTE SCRIPT ---------"