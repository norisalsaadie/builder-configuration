lax:
    app:
        # secret: 
        allow_invalid_ajson: True
        reporting_bucket: elife-lax-reports
        cache_headers_ttl: 300
        users:
            api_gateway:
                username: api-gateway
                # password: 

    # deprecated. use elife.db.app and elife.postgresql
    db:
        name: lax
        # username: 
        # password: 
        host: 127.0.0.1
        port: 5432

    botlax:
        api_whitelist:
            - '212.44.25.140' # elife
            - '182.72.206.72/29' # exeter are 182.72.206.73 to 78
            - '115.160.252.46' # another exeter IP
            - '88.202.224.171' # yet another exeter IP
            - '52.22.158.139' # kriya live server IP address:
            - '52.1.30.155' # kriya live server IP address:
            - '34.225.34.128' # kriya test/integration server IP address:
            - '121.45.18.161' # LSH
            - '127.0.0.1' # internal

    aws:
        # access_key_id:
        # secret_access_key:
        subscriber: 512686554592
        region: us-east-1

    sns:
        name: bus-articles
        subscriber: 512686554592 # TODO: remove in favor or pillar.lax.aws
        region: us-east-1 # TODO: remove in favor of pillar.lax.aws

    restore:
        db: lax/201706/20170605_prod--lax.elifesciences.org_230109-laxprod-psql.gz

elife:
    db:
        app:
            name: lax
            # username:
            # password:

    loris:
        storage: /ext/loris
        port: 8010
        resolver:
            impl: loris.resolver.SimpleHTTPResolver
            source_prefix: https://publishing-cdn.elifesciences.org/

    newrelic_python:
        application_folder: /srv/lax
        service: uwsgi-lax
        dependency_state: configure-lax
