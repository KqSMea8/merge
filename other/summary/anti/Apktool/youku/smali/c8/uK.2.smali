.class public Lc8/uK;
.super Ljava/lang/Object;
.source "TnetSpdySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/TnetSpdySession;->getRecvTimeOutRunnable()Ljava/lang/Runnable;
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
    .line 324
    iput-object p1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 327
    iget-object v1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-boolean v1, v1, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    if-eqz v1, :cond_1

    .line 328
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "send msg time out!"

    iget-object v3, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v3, v3, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "pingUnRcv:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-boolean v6, v6, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :try_start_0
    iget-object v1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    sget-object v2, Lanet/channel/entity/EventType;->DATA_TIMEOUT:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lanet/channel/session/TnetSpdySession;->access$000(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V

    .line 331
    iget-object v1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v1, v1, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v1, v1, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v2, "ping time out"

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 334
    :cond_0
    iget-object v1, p0, Lc8/uK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-virtual {v1}, Lanet/channel/session/TnetSpdySession;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
