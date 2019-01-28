.class public Lc8/mNf;
.super Landroid/os/Handler;
.source "LoginHandler.java"

# interfaces
.implements Lc8/oNf;


# static fields
.field public static final LOGIN_CANCEL:I = 0xde6ff

.field public static final LOGIN_FAILED:I = 0xde6fe

.field public static final LOGIN_SUCCESS:I = 0xde6fd

.field public static final LOGIN_TIMEOUT:I = 0xde700

.field private static final TAG:Ljava/lang/String; = "mtopsdk.LoginHandler"

.field private static mtopLoginHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/AOp;",
            "Lc8/mNf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mtopInstance:Lc8/AOp;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/mNf;->mtopLoginHandlerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lc8/AOp;Landroid/os/Looper;)V
    .locals 0
    .param p1, "mtopInstance"    # Lc8/AOp;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object p1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    .line 48
    return-void
.end method

.method private checkXStateSessionInfo()V
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-static {v2}, Lc8/nNf;->getLoginContext(Lc8/AOp;)Lc8/lNf;

    move-result-object v0

    .line 138
    .local v0, "context":Lc8/lNf;
    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    :try_start_0
    iget-object v2, v0, Lc8/lNf;->sid:Ljava/lang/String;

    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc8/lNf;->sid:Ljava/lang/String;

    iget-object v3, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-virtual {v3}, Lc8/AOp;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    iget-object v3, v0, Lc8/lNf;->sid:Ljava/lang/String;

    iget-object v4, v0, Lc8/lNf;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 144
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v2, "mtopsdk.LoginHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-virtual {v4}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [checkXStateSessionInfo] invoked."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtopsdk.LoginHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-virtual {v4}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [checkXStateSessionInfo] error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static instance()Lc8/mNf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-static {v0}, Lc8/mNf;->instance(Lc8/AOp;)Lc8/mNf;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lc8/AOp;)Lc8/mNf;
    .locals 6
    .param p0, "mtopInstance"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    if-nez p0, :cond_2

    const/4 v4, 0x0

    invoke-static {v4}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v3

    .line 55
    .local v3, "mtop":Lc8/AOp;
    :goto_0
    sget-object v4, Lc8/mNf;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/mNf;

    .line 56
    .local v1, "mHandler":Lc8/mNf;
    if-nez v1, :cond_1

    .line 57
    const-class v5, Lc8/mNf;

    monitor-enter v5

    .line 58
    :try_start_0
    sget-object v4, Lc8/mNf;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/mNf;

    move-object v1, v0

    .line 59
    if-nez v1, :cond_0

    .line 60
    new-instance v2, Lc8/mNf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/mNf;-><init>(Lc8/AOp;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "mHandler":Lc8/mNf;
    .local v2, "mHandler":Lc8/mNf;
    :try_start_1
    sget-object v4, Lc8/mNf;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 63
    .end local v2    # "mHandler":Lc8/mNf;
    .restart local v1    # "mHandler":Lc8/mNf;
    :cond_0
    :try_start_2
    monitor-exit v5

    .line 65
    :cond_1
    return-object v1

    .end local v1    # "mHandler":Lc8/mNf;
    .end local v3    # "mtop":Lc8/AOp;
    :cond_2
    move-object v3, p0

    .line 54
    goto :goto_0

    .line 63
    .restart local v1    # "mHandler":Lc8/mNf;
    .restart local v3    # "mtop":Lc8/AOp;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1    # "mHandler":Lc8/mNf;
    .restart local v2    # "mHandler":Lc8/mNf;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "mHandler":Lc8/mNf;
    .restart local v1    # "mHandler":Lc8/mNf;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0xde700

    .line 84
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "instanceId":Ljava/lang/String;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [handleMessage]The MtopBusiness LoginHandler receive message ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 91
    :pswitch_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [handleMessage]onReceive: NOTIFY_LOGIN_SUCCESS."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    invoke-direct {p0}, Lc8/mNf;->checkXStateSessionInfo()V

    .line 95
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-static {v1}, Lc8/IMf;->retryAllRequest(Lc8/AOp;)V

    .line 97
    invoke-virtual {p0, v4}, Lc8/mNf;->removeMessages(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[handleMessage]onReceive: NOTIFY_LOGIN_FAILED."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_3
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    const-string/jumbo v2, "ANDROID_SYS_LOGIN_FAIL"

    const-string/jumbo v3, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v1, v2, v3}, Lc8/IMf;->failAllRequest(Lc8/AOp;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v4}, Lc8/mNf;->removeMessages(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[handleMessage]onReceive: NOTIFY_LOGIN_CANCEL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    const-string/jumbo v2, "ANDROID_SYS_LOGIN_CANCEL"

    const-string/jumbo v3, "\u767b\u5f55\u88ab\u53d6\u6d88"

    invoke-static {v1, v2, v3}, Lc8/IMf;->failAllRequest(Lc8/AOp;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v4}, Lc8/mNf;->removeMessages(I)V

    goto/16 :goto_0

    .line 121
    :pswitch_3
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[handleMessage]onReceive: NOTIFY_LOGIN_TIMEOUT."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_5
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-static {v1}, Lc8/nNf;->isSessionValid(Lc8/AOp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const-string/jumbo v1, "mtopsdk.LoginHandler"

    const-string/jumbo v2, "Session valid, Broadcast may missed!"

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lc8/mNf;->checkXStateSessionInfo()V

    .line 127
    iget-object v1, p0, Lc8/mNf;->mtopInstance:Lc8/AOp;

    invoke-static {v1}, Lc8/IMf;->retryAllRequest(Lc8/AOp;)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0xde6fd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLoginCancel()V
    .locals 1

    .prologue
    .line 165
    const v0, 0xde6ff

    invoke-virtual {p0, v0}, Lc8/mNf;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public onLoginFail()V
    .locals 1

    .prologue
    .line 160
    const v0, 0xde6fe

    invoke-virtual {p0, v0}, Lc8/mNf;->sendEmptyMessage(I)Z

    .line 161
    return-void
.end method

.method public onLoginSuccess()V
    .locals 1

    .prologue
    .line 155
    const v0, 0xde6fd

    invoke-virtual {p0, v0}, Lc8/mNf;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method
