.class public Lc8/wxe;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uxe;,
        Lc8/vxe;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    .line 38
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

.method static synthetic access$000(Lc8/wxe;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/wxe;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    const-string/jumbo v4, "com.sina.weibo.sdk.cmd.WbAppActivator"

    invoke-static {v4}, Lc8/wxe;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 177
    .local v3, "wbActivator":Ljava/lang/Class;
    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 178
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v1, v4, v5}, Lc8/wxe;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "activateApp"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    .local v0, "activateApp":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lc8/wxe;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "activateApp":Ljava/lang/reflect/Method;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "wbActivator":Ljava/lang/Class;
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public request(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/Fxe;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lc8/Fxe;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/wxe;->addAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p2}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "isAnonymous"    # Z
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "params"    # Lc8/Fxe;
    .param p6, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    const-string/jumbo v0, "source"

    invoke-virtual {p5, v0, p1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p5, p3}, Lc8/Fxe;->setAnonymousCookie(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p4, p5, p6}, Lc8/wxe;->request(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p4, p5, p6}, Lc8/wxe;->request(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public request4RdirectURL(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/Fxe;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Exe;

    .prologue
    .line 82
    new-instance v0, Lc8/txe;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/txe;-><init>(Lc8/wxe;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;Lc8/Exe;)V

    .line 99
    invoke-virtual {v0}, Lc8/txe;->start()V

    .line 100
    return-void
.end method

.method public requestAsync(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/Fxe;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Exe;

    .prologue
    .line 148
    iget-object v0, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lc8/Fxe;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/wxe;->addAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lc8/vxe;

    iget-object v1, p0, Lc8/wxe;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/vxe;-><init>(Landroid/content/Context;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lc8/vxe;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method

.method public requestAsync(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "isAnonymous"    # Z
    .param p3, "cookie"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "params"    # Lc8/Fxe;
    .param p6, "httpMethod"    # Ljava/lang/String;
    .param p7, "listener"    # Lc8/Exe;

    .prologue
    .line 161
    if-eqz p2, :cond_0

    .line 162
    const-string/jumbo v0, "source"

    invoke-virtual {p5, v0, p1}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p5, p3}, Lc8/Fxe;->setAnonymousCookie(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p4, p5, p6, p7}, Lc8/wxe;->requestAsync(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p4, p5, p6, p7}, Lc8/wxe;->requestAsync(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    goto :goto_0
.end method

.method public requestByThread(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/Fxe;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Exe;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lc8/sxe;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/sxe;-><init>(Lc8/wxe;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;Lc8/Exe;)V

    .line 73
    invoke-virtual {v0}, Lc8/sxe;->start()V

    .line 74
    return-void
.end method
