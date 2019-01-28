.class public Lc8/GXo;
.super Lc8/MXf;
.source "WXUserModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser(Lc8/EWf;)V
    .locals 5
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 23
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 24
    .local v2, "userJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 25
    .local v1, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 26
    const-string/jumbo v3, "uid"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo v3, "accessToken"

    invoke-static {}, Lc8/Gko;->getSToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v3, "nickName"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v3, "avatarUrl"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v3, "userName"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v3, "isLogin"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string/jumbo v3, "userId"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :try_start_0
    const-string/jumbo v4, "userNumberId"

    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->getUserNumberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v4, "ytid"

    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->getYtid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v4, "isVip"

    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->isVIP()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    const-string/jumbo v3, "userIcon"

    iget-object v4, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1, v2}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 46
    :cond_1
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserInfo(Lc8/EWf;)V
    .locals 4
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 51
    .local v1, "user":Lcom/youku/usercenter/passport/remote/UserInfo;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 52
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 53
    const-string/jumbo v2, "result"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "Get User Info"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v2, "info"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v2, "result"

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "failed"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "Not login"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public login(Lc8/EWf;)V
    .locals 4
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    .line 70
    .local v1, "user":Lcom/youku/usercenter/passport/remote/UserInfo;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 71
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 72
    const-string/jumbo v2, "result"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v2, "status"

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "User is logged in."

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v2, "info"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_0
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lc8/GXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Gko;->startLoginActivity(Landroid/content/Context;)V

    .line 78
    const-string/jumbo v2, "result"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "Start Login"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public logout(Lc8/EWf;)V
    .locals 3
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lc8/Gko;->logout()V

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 90
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "User Logout"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method
