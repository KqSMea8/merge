.class public Lc8/jJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectTimeoutTask"
.end annotation


# instance fields
.field seq:Ljava/lang/String;

.field final synthetic this$0:Lc8/lJ;


# direct methods
.method constructor <init>(Lc8/lJ;Ljava/lang/String;)V
    .locals 1
    .param p2, "seq"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lc8/jJ;->this$0:Lc8/lJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jJ;->seq:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lc8/jJ;->seq:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 95
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-boolean v0, v0, Lc8/lJ;->isConnecting:Z

    if-eqz v0, :cond_1

    .line 96
    const-string/jumbo v0, "awcn.SessionRequest"

    const-string/jumbo v1, "Connecting timeout!!! reset status!"

    iget-object v2, p0, Lc8/jJ;->seq:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 98
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v1, v1, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v4, v1, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 99
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    iput-boolean v6, v0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 101
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->close()V

    .line 102
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v0, v0, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-object v1, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v1, v1, Lc8/lJ;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0, v1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 104
    :cond_0
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v0

    iget-object v1, p0, Lc8/jJ;->this$0:Lc8/lJ;

    iget-object v1, v1, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v0, v1}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 105
    iget-object v0, p0, Lc8/jJ;->this$0:Lc8/lJ;

    invoke-static {v0, v6}, Lc8/lJ;->access$000(Lc8/lJ;Z)V

    .line 107
    :cond_1
    return-void
.end method
