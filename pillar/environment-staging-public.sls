elife:
    env: staging

elife_xpub:
    api:
        endpoint: https://staging--xpub.elifesciences.org
    orcid: {}
        # sandbox.orcid.org credentials
        # client_id:
        # client_secret:
    pubsweet:
        base_url: https://staging--xpub.elifesciences.org
    meca:
        sftp:
            connection:
                host: sftp.ejpress.com
                # EJP sandbox credentials
                # username: 
                # password:
    s3:
        bucket: staging-elife-xpub
    mailer:
        # turned off emails due to various bugs
        # host: email-smtp.us-east-1.amazonaws.com
        port: 587
        # user: # see builder-private
        # pass: # see builder-private
    deployment_target: staging
