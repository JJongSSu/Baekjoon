def solution(id_pw, db):
    # if(id_pw in db):
    #     return 'login'
    # for i in db:
    #     if(id_pw[0]==i[0]):
    #         return 'wrong pw'    
    #     else:
    #         pass
    # if(id_pw not in db):
    #     return 'fail'

    if db_pw := dict(db).get(id_pw[0]):
        return "login" if db_pw == id_pw[1] else "wrong pw"
    return "fail"