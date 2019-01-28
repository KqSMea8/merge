.class public Lc8/Uib;
.super Ljava/lang/Object;
.source "MtopRemoteLoginImpl.java"

# interfaces
.implements Lc8/jNf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLoginContext()Lc8/lNf;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lc8/lNf;

    invoke-direct {v0}, Lc8/lNf;-><init>()V

    .line 77
    .local v0, "loginContext":Lc8/lNf;
    :try_start_0
    sget-object v2, Lc8/Bgb;->credentialService:Lc8/rhb;

    invoke-interface {v2}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    .line 78
    .local v1, "session":Lc8/ahb;
    iget-object v2, v1, Lc8/ahb;->nick:Ljava/lang/String;

    iput-object v2, v0, Lc8/lNf;->nickname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "session":Lc8/ahb;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isLogining()Z
    .locals 8

    .prologue
    .line 60
    :try_start_0
    const-string/jumbo v3, "com.ali.auth.third.login.util.LoginStatus"

    invoke-static {v3}, Lc8/Uib;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    .local v1, "loginServiceImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "com.ali.auth.third.login.util.LoginStatus"

    const-string/jumbo v4, "isLogining"

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lc8/Xhb;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 63
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 70
    .end local v1    # "loginServiceImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lc8/Bgb;->credentialService:Lc8/rhb;

    invoke-interface {v0}, Lc8/rhb;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public login(Lc8/oNf;Z)V
    .locals 9
    .param p1, "listener"    # Lc8/oNf;
    .param p2, "bShowLoginUI"    # Z

    .prologue
    .line 19
    new-instance v1, Lc8/Tib;

    invoke-direct {v1, p0, p1}, Lc8/Tib;-><init>(Lc8/Uib;Lc8/oNf;)V

    .line 40
    .local v1, "loginCallback":Lc8/xgb;
    :try_start_0
    const-string/jumbo v3, "com.ali.auth.third.login.LoginServiceImpl"

    invoke-static {v3}, Lc8/Uib;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 41
    .local v2, "loginServiceImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "com.ali.auth.third.login.LoginServiceImpl"

    const-string/jumbo v4, "auth"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "com.ali.auth.third.core.callback.LoginCallback"

    aput-object v7, v5, v6

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lc8/Xhb;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v2    # "loginServiceImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
