.class public final Lc8/wko;
.super Ljava/lang/Object;
.source "Passport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->initInMainProcess(Landroid/content/Context;Lc8/kko;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/kko;

.field final synthetic val$aContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/kko;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lc8/wko;->val$aContext:Landroid/content/Context;

    iput-object p2, p0, Lc8/wko;->val$aCallback:Lc8/kko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 144
    :try_start_0
    const-string/jumbo v6, "com.youku.usercenter.passport.remote.PassportService"

    const/4 v7, 0x1

    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    invoke-static {v6, v7, v8}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 148
    .local v5, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Service;

    .line 150
    .local v4, "remoteService":Landroid/app/Service;
    const-class v6, Landroid/content/ContextWrapper;

    const-string/jumbo v7, "attachBaseContext"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 153
    .local v0, "attachContext":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lc8/wko;->val$aContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-static {v0, v4, v6}, Lc8/wko;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v6, "onBind"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Intent;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 157
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Lc8/wko;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 158
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lc8/Hpo;->asInterface(Landroid/os/IBinder;)Lc8/Ipo;

    move-result-object v6

    invoke-static {v6}, Lc8/Gko;->access$002(Lc8/Ipo;)Lc8/Ipo;

    .line 160
    iget-object v6, p0, Lc8/wko;->val$aContext:Landroid/content/Context;

    iget-object v7, p0, Lc8/wko;->val$aCallback:Lc8/kko;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lc8/Gko;->access$100(Landroid/content/Context;Lc8/kko;Z)V

    .line 161
    const-string/jumbo v6, "YKLogin.PassportSDK-Api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "get Binder Success by reflection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "attachContext":Ljava/lang/reflect/Method;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "remoteService":Landroid/app/Service;
    .end local v5    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "YKLogin.PassportSDK-Api"

    const-string/jumbo v7, "reflect Binder exception"

    invoke-static {v6, v7, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    iget-object v6, p0, Lc8/wko;->val$aContext:Landroid/content/Context;

    iget-object v7, p0, Lc8/wko;->val$aCallback:Lc8/kko;

    invoke-static {v6, v7}, Lc8/Gko;->access$200(Landroid/content/Context;Lc8/kko;)V

    goto :goto_0
.end method
