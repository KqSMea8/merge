.class public Lc8/mMp;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nMp;


# direct methods
.method constructor <init>(Lc8/nMp;)V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lc8/mMp;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iput-object p1, p0, Lc8/mMp;->this$0:Lc8/nMp;

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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "s"    # Landroid/os/IBinder;

    .prologue
    .line 57
    .local p0, "this":Lc8/mMp;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v6}, Lc8/nMp;->access$000(Lc8/nMp;)[B

    move-result-object v7

    monitor-enter v7

    .line 59
    :try_start_0
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v6}, Lc8/nMp;->access$100(Lc8/nMp;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    iget-object v8, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v8}, Lc8/nMp;->access$200(Lc8/nMp;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lc8/nMp;->access$102(Lc8/nMp;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :cond_0
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    const-string/jumbo v6, "mtopsdk.AsyncServiceBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[onServiceConnected] Service connected called. interfaceName ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v9}, Lc8/nMp;->access$100(Lc8/nMp;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v6}, Lc8/nMp;->access$200(Lc8/nMp;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 66
    .local v3, "innerClassses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    .line 67
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Stub"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    const-string/jumbo v6, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 69
    .local v5, "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v6, v9

    invoke-static {v5, v1, v6}, Lc8/mMp;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IInterface;

    iput-object v6, v8, Lc8/nMp;->service:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i$":I
    .end local v3    # "innerClassses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "len$":I
    :catch_0
    move-exception v6

    :try_start_1
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lc8/nMp;->access$402(Lc8/nMp;Z)Z

    .line 74
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    const-string/jumbo v6, "mtopsdk.AsyncServiceBinder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[onServiceConnected] Service bind failed. mBindFailed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v9}, Lc8/nMp;->access$400(Lc8/nMp;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",interfaceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v9}, Lc8/nMp;->access$100(Lc8/nMp;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_3
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    iget-object v6, v6, Lc8/nMp;->service:Landroid/os/IInterface;

    if-eqz v6, :cond_4

    .line 80
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lc8/nMp;->access$402(Lc8/nMp;Z)Z

    .line 81
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-virtual {v6}, Lc8/nMp;->afterAsyncBind()V

    .line 84
    :cond_4
    iget-object v6, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lc8/nMp;->access$302(Lc8/nMp;Z)Z

    .line 86
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 42
    .local p0, "this":Lc8/mMp;, "Lmtopsdk/common/util/AsyncServiceBinder.1;"
    iget-object v0, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v0}, Lc8/nMp;->access$000(Lc8/nMp;)[B

    move-result-object v1

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v0}, Lc8/nMp;->access$100(Lc8/nMp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc8/mMp;->this$0:Lc8/nMp;

    iget-object v2, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v2}, Lc8/nMp;->access$200(Lc8/nMp;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/nMp;->access$102(Lc8/nMp;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    :cond_0
    const-string/jumbo v0, "mtopsdk.AsyncServiceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onServiceDisconnected] Service disconnected called,interfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/mMp;->this$0:Lc8/nMp;

    invoke-static {v3}, Lc8/nMp;->access$100(Lc8/nMp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v2, 0x0

    iput-object v2, v0, Lc8/nMp;->service:Landroid/os/IInterface;

    .line 50
    iget-object v0, p0, Lc8/mMp;->this$0:Lc8/nMp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/nMp;->access$302(Lc8/nMp;Z)Z

    .line 51
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
