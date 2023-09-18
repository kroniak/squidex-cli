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

`docker run -it --rm kroniak/squidex-cli sq --help`

## supported tags and respective Dockerfile links

- 11.2, latest [11.2/Dockerfile](src/11.2/ubuntu20.04/Dockerfile)
- 7.25 [7.25/Dockerfile](src/7.25/ubuntu20.04/Dockerfile)
