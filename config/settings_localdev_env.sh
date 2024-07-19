## ============================================================================
## standard project-level settings
## ============================================================================

DJ_TMPLT32__SECRET_KEY="example_secret_key"

DJ_TMPLT32__DEBUG_JSON="true"

DJ_TMPLT32__ADMINS_JSON='
    [
      [
        "exampleFirst exampleLast",
        "example@domain.edu"
      ]
    ]
    '

DJ_TMPLT32__ALLOWED_HOSTS_JSON='["127.0.0.1", "127.0.0.1:8000", "0.0.0.0:8000", "localhost:8000"]'  # must be json

DJ_TMPLT32__DATABASES_JSON='
    {
      "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "HOST": "",
        "NAME": "../DBs/x_project_files.sqlite",
        "PASSWORD": "",
        "PORT": "",
        "USER": ""
      }
    }
    '

DJ_TMPLT32__STATIC_URL="/static/"
DJ_TMPLT32__STATIC_ROOT="/static/"

DJ_TMPLT32__EMAIL_HOST="localhost"
DJ_TMPLT32__EMAIL_PORT="1026"  # will be converted to int in settings.py
DJ_TMPLT32__SERVER_EMAIL="donotreply_x-project@domain.edu"

DJ_TMPLT32__LOG_PATH="../logs/x_project.log"
DJ_TMPLT32__LOG_LEVEL="DEBUG"

DJ_TMPLT32__CSRF_TRUSTED_ORIGINS_JSON='["localhost", "127.0.0.1"]'

## https://docs.djangoproject.com/en/3.2/topics/cache/
## - TIMEOUT is in seconds (0 means don't cache); CULL_FREQUENCY defaults to one-third
DJ_TMPLT32__CACHES_JSON='
{
  "default": {
    "BACKEND": "django.core.cache.backends.filebased.FileBasedCache",
    "LOCATION": "../cache_dir",
    "TIMEOUT": 0,
    "OPTIONS": {
        "MAX_ENTRIES": 1000
    }
  }
}
'

## ============================================================================
## app
## ============================================================================

DJ_TMPLT32__README_URL="https://github.com/birkin/django_template_32_project/blob/main/README.md"

## auth -------------------------------------------------------------

DJ_TMPLT32__SUPER_USERS_JSON='[
]'

DJ_TMPLT32__STAFF_USERS_JSON='
[
  "eppn@domain.edu"
]'

DJ_TMPLT32__STAFF_GROUPER_GROUP="the:group"

DJ_TMPLT32__TEST_META_DCT_JSON='{
  "Shibboleth-eppn": "eppn@brown.edu",
  "Shibboleth-brownNetId": "First_Last",
  "Shibboleth-mail": "first_last@domain.edu",
  "Shibboleth-givenName": "First",
  "Shibboleth-sn": "Last",
  "Shibboleth-isMemberOf": "aa:bb:cc;dd:ee:ff;the:group;gg:hh"
}'

DJ_TMPLT32__LOGIN_PROBLEM_EMAIL="x_project_problems@domain.edu"


## end --------------------------------------------------------------
