# squidex-cli

Squidex CMS CLI automation tool
[squidex help link](https://docs.squidex.io/02-documentation/developer-guides/automation-tools)

## using from GitLab CI

```yml
deploy_staging:
  stage: deploy
  image: kroniak/squidex-cli
  environment:
    name: staging
    url: https://sample-app.net
  script:
    - sq --help
  only:
    - dev
```

## using from docker

`docker run -it --rm kroniak/squidex-cli --help`

## supported tags and respective Dockerfile links

- 7.25, latest [7.25/Dockerfile](src/7.25/ubuntu20.04/Dockerfile)
