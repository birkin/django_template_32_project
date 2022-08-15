import datetime, json, logging

from django.http import HttpResponse
from django.shortcuts import render
from x_app.lib import version_helper

log = logging.getLogger(__name__)


def info(request):
    return HttpResponse("Hello, world. You're at the info-I page.")
    # resp = render( request, 'info.html', {'foo': 'CC'} )
    return resp


def version( request ):
    """ Returns basic branch and commit data. """
    rq_now = datetime.datetime.now()
    commit = version_helper.get_commit()
    branch = version_helper.get_branch()
    info_txt = commit.replace( 'commit', branch )
    context = version_helper.make_context( request, rq_now, info_txt )
    output = json.dumps( context, sort_keys=True, indent=2 )
    log.debug( f'output, ``{output}``' )
    return HttpResponse( output, content_type='application/json; charset=utf-8' )
