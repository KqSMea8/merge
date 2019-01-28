.class public Lc8/Ugn;
.super Ljava/lang/Object;
.source "MsgHistoryManager.java"

# interfaces
.implements Lc8/Sgn;


# static fields
.field private static instance:Lc8/Ugn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/Sgn;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lc8/Ugn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Ugn;->instance:Lc8/Ugn;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lc8/Ugn;

    invoke-direct {v0}, Lc8/Ugn;-><init>()V

    sput-object v0, Lc8/Ugn;->instance:Lc8/Ugn;

    .line 24
    :cond_0
    sget-object v0, Lc8/Ugn;->instance:Lc8/Ugn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hasNewPushMsg()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lc8/Fhn;->hasNewPushMsg()Z

    move-result v0

    return v0
.end method

.method public notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1, p2, p3}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public savePushMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1}, Lc8/Fhn;->savePushMsg(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setAllPushMsgNotNew()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lc8/Fhn;->setAllPushMsgNotNew()V

    .line 40
    return-void
.end method

.method public setPushMsgRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lc8/Fhn;->setPushMsgRead(Ljava/lang/String;)V

    .line 35
    return-void
.end method
