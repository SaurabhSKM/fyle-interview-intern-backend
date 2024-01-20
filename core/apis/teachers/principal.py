from flask import Blueprint
from core import db
from core.apis import decorators
from core.apis.responses import APIResponse
from core.models.teachers import Teacher

from .schema import TeachersSchema
principal_teachers_resources = Blueprint('principal_teachers_resources', __name__)

@principal_teachers_resources.route('/teachers', methods=['GET'], strict_slashes=False)
@decorators.authenticate_principal
def list_teachers(p):
    """Returns list of teachers"""
    list_teachers = Teacher.get_all_teachers()
    list_teachers_dump = TeachersSchema().dump(list_teachers, many=True)
    return APIResponse.respond(data=list_teachers_dump)