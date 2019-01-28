.class public Lcom/taobao/accs/init/Launcher_CrossActivityStopped;
.super Ljava/lang/Object;
.source "Launcher_CrossActivityStopped.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 23
    :try_start_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string/jumbo v1, "Launcher_CrossActivityStopped"

    const-string/jumbo v2, "onStopped"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-static {}, Lc8/OL;->onBackground()V

    .line 29
    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 30
    :cond_1
    const-string/jumbo v1, "Launcher_CrossActivityStopped"

    const-string/jumbo v2, "params null!!!"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "appkey"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "context"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_2
    :goto_0
    return-void

    .line 33
    :cond_3
    sget-boolean v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mIsInited:Z

    if-eqz v1, :cond_2

    .line 34
    new-instance v1, Lcom/taobao/accs/init/Launcher_CrossActivityStopped$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/init/Launcher_CrossActivityStopped$1;-><init>(Lcom/taobao/accs/init/Launcher_CrossActivityStopped;)V

    invoke-static {v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Launcher_CrossActivityStopped"

    const-string/jumbo v2, "onStoped"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
