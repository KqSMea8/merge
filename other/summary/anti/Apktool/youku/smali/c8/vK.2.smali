.class public Lc8/vK;
.super Ljava/lang/Object;
.source "TnetSpdySession.java"

# interfaces
.implements Lanet/channel/IAuth$AuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/TnetSpdySession;->auth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/session/TnetSpdySession;


# direct methods
.method public constructor <init>(Lanet/channel/session/TnetSpdySession;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 402
    iput-object p1, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_FAIL:Lanet/channel/Session$Status;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->access$200(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 420
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Accs_Auth_Fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 424
    :cond_0
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v0}, Lanet/channel/session/TnetSpdySession;->close()V

    .line 425
    return-void
.end method

.method public onAuthSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 405
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/session/TnetSpdySession;->access$100(Lanet/channel/session/TnetSpdySession;Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 406
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 407
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lc8/NJ;

    invoke-interface {v0}, Lc8/NJ;->start()V

    .line 410
    :cond_0
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iput v6, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 411
    const-string/jumbo v0, "awcn.TnetSpdySession"

    const-string/jumbo v1, "spdyOnStreamResponse"

    iget-object v2, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v2, v2, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "authTime"

    aput-object v5, v3, v4

    iget-object v4, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v4, v4, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v4, v4, Lanet/channel/statist/SessionStatistic;->authTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-wide v0, v0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lc8/vK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-wide v4, v1, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->authTime:J

    .line 415
    :cond_1
    return-void
.end method
