import logging

from django import http

logger = logging.getLogger("app")


class ErrorLoggingMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        if response.status_code >= 400:
            message = self.format_message(request=request, response=response)
            logger.error(msg=message)
        return response

    def format_message(self, request: http.request, response: http.response) -> str:
        pk = request.user.pk if request.user.is_authenticated else -1
        message = f"{response.status_code}:{pk}:{request.method}:{request.scheme}:{request.path}"
        return message
