# DIY Docker Registry

These are instructions and scripts to quickly get up and running  your own docker registry, with SSL and basic auth out of the box. I feel like the [documentation](https://distribution.github.io/distribution/) on this is a bit obscure, so I'm documenting it here because you should not trust Docker Hub to remain online when [AWS goes offline](https://www.bbc.com/news/articles/cev1en9077ro).


## Steps

1. Clone this repository:

```bash
git clone https://github.com/uav4geo/diy-docker-registry
cd diy-docker-registry
```

2. Setup a DNS A Record `yourhost.com` --> `IP`

3. Edit `distribution/config.yml` (replace `yourhost.com` with your DNS).

4. Create a htpasswd file by:

```bash
docker run --rm --entrypoint htpasswd httpd:2 -Bbn USERNAM_HERE PASSWORD_HERE > auth/htpasswd
```

5. Start the registry

```bash
./run.sh
```

## (optional) Add Cron Job

By default the LetsEncrypt certificate will not auto-renew. You should add a cron job that runs `docker restart registry` every month.

