c.NotebookApp.password = 'sha1:33f06ac2ce44:539422196f2636df49bc85a02a66a640cbabc88e' # 123456

# re-generate password
'''
from notebook.auth import passwd
passwd()
'''

# if password is not set, then the url is
'''
http://<ip>:<port>/?token=
'''