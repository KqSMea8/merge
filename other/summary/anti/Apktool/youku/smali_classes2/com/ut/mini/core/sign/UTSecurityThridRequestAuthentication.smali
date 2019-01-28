.class public Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
.super Ljava/lang/Object;
.source "UTSecurityThridRequestAuthentication.java"

# interfaces
.implements Lcom/ut/mini/core/sign/IUTRequestAuthentication;


# static fields
.field private static final TAG:Ljava/lang/String; = "UTSecurityThridRequestAuthentication"


# instance fields
.field private authcode:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mBInitSecurityCheck:Z

.field private s_secureIndex:I

.field private s_secureSignatureCompObj:Ljava/lang/Object;

.field private s_securityGuardManagerObj:Ljava/lang/Object;

.field private s_securityGuardParamContextClz:Ljava/lang/Class;

.field private s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

.field private s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

.field private s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

.field private s_signRequestMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardManagerObj:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureSignatureCompObj:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    .line 53
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

    .line 54
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

    .line 55
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

    .line 56
    iput-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_signRequestMethod:Ljava/lang/reflect/Method;

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureIndex:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mBInitSecurityCheck:Z

    .line 42
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->authcode:Ljava/lang/String;

    .line 44
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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized initSecurityCheck()V
    .locals 9

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mBInitSecurityCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v5, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v5}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    const-string/jumbo v5, "getInstance"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 118
    .local v2, "lgetInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardManagerObj:Ljava/lang/Object;

    .line 120
    const-string/jumbo v5, "getSecureSignatureComp"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 121
    .local v3, "lgetSecureSignatureComp":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardManagerObj:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureSignatureCompObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v2    # "lgetInstanceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "lgetSecureSignatureComp":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v0, :cond_1

    .line 127
    :try_start_2
    const-string/jumbo v5, "com.alibaba.wireless.security.open.SecurityGuardParamContext"

    invoke-static {v5}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    .line 128
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    const-string/jumbo v6, "appKey"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

    .line 129
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    const-string/jumbo v6, "paramMap"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

    .line 130
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    const-string/jumbo v6, "requestType"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

    .line 131
    const-string/jumbo v5, "com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent"

    invoke-static {v5}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 132
    .local v4, "lsignCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "signRequest"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_signRequestMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v4    # "lsignCompClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mBInitSecurityCheck:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 111
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 122
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v5, "UTSecurityThridRequestAuthentication"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "initSecurityCheck"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "UTSecurityThridRequestAuthentication"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "initSecurityCheck"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->authcode:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    const-string/jumbo v5, ""

    new-array v7, v13, [Ljava/lang/Object;

    const-string/jumbo v8, "toBeSignedStr"

    aput-object v8, v7, v11

    aput-object p1, v7, v12

    invoke-static {v5, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-boolean v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mBInitSecurityCheck:Z

    if-nez v5, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->initSecurityCheck()V

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mAppkey:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 70
    const-string/jumbo v5, "UTSecurityThridRequestAuthentication"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "There is no appkey,please check it!"

    aput-object v8, v7, v11

    invoke-static {v5, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v6

    .line 106
    :goto_0
    return-object v3

    .line 74
    :cond_1
    if-nez p1, :cond_2

    move-object v3, v6

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    const/4 v3, 0x0

    .line 79
    .local v3, "lSignedStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardManagerObj:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_signRequestMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureSignatureCompObj:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 84
    :try_start_0
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, "lsecurityGuardParamContext":Ljava/lang/Object;
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

    iget-object v7, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->mAppkey:Ljava/lang/String;

    invoke-static {v5, v4, v7}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 87
    .local v2, "lParamMap":Ljava/util/Map;
    const-string/jumbo v5, "INPUT"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

    iget v7, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object v5, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_signRequestMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_secureSignatureCompObj:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->authcode:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "lParamMap":Ljava/util/Map;
    .end local v4    # "lsecurityGuardParamContext":Ljava/lang/Object;
    :goto_1
    const-string/jumbo v5, ""

    new-array v6, v13, [Ljava/lang/Object;

    const-string/jumbo v7, "lSignedStr"

    aput-object v7, v6, v11

    aput-object v3, v6, v12

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v6, v1, v5}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v5, "UTSecurityThridRequestAuthentication.getSign"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "s_securityGuardManagerObj"

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardManagerObj:Ljava/lang/Object;

    aput-object v7, v6, v12

    const-string/jumbo v7, "s_securityGuardParamContextClz"

    aput-object v7, v6, v13

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContextClz:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "s_securityGuardParamContext_appKey"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_appKey:Ljava/lang/reflect/Field;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "s_securityGuardParamContext_paramMap"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_paramMap:Ljava/lang/reflect/Field;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "s_securityGuardParamContext_requestType"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_securityGuardParamContext_requestType:Ljava/lang/reflect/Field;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v8, "s_signRequestMethod"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;->s_signRequestMethod:Ljava/lang/reflect/Method;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
