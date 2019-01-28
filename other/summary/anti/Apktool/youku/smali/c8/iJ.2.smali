.class public Lc8/iJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lc8/kJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnCb"
.end annotation


# instance fields
.field private connInfo:Lc8/AJ;

.field private context:Landroid/content/Context;

.field isHandleFinish:Z

.field private strategys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/AJ;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/lJ;


# direct methods
.method constructor <init>(Lc8/lJ;Landroid/content/Context;Ljava/util/List;Lc8/AJ;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "connInfo"    # Lc8/AJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/AJ;",
            ">;",
            "Lc8/AJ;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p3, "strategyList":Ljava/util/List;, "Ljava/util/List<Lanet/channel/entity/ConnInfo;>;"
    iput-object p1, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/iJ;->isHandleFinish:Z

    .line 170
    iput-object p2, p0, Lc8/iJ;->context:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lc8/iJ;->strategys:Ljava/util/List;

    .line 172
    iput-object p4, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    .line 173
    return-void
.end method

.method static synthetic access$500(Lc8/iJ;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/iJ;

    .prologue
    .line 163
    iget-object v0, p0, Lc8/iJ;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V
    .locals 10
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "start"    # J
    .param p4, "type"    # Lanet/channel/entity/EventType;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 276
    invoke-static {}, Lc8/TI;->isAppBackground()Z

    move-result v0

    .line 277
    .local v0, "isbg":Z
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "Connect Disconnect"

    iget-object v3, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v3}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string/jumbo v5, "host"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v6}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "appIsBg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "isHandleFinish"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-boolean v6, p0, Lc8/iJ;->isHandleFinish:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v1}, Lc8/lJ;->access$100(Lc8/lJ;)Lc8/dJ;

    move-result-object v1

    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v1, v2, p1}, Lc8/dJ;->remove(Lc8/lJ;Lanet/channel/Session;)V

    .line 280
    iget-boolean v1, p0, Lc8/iJ;->isHandleFinish:Z

    if-eqz v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iput-boolean v8, p0, Lc8/iJ;->isHandleFinish:Z

    .line 285
    iget-boolean v1, p1, Lanet/channel/Session;->autoReCreate:Z

    if-eqz v1, :cond_0

    .line 288
    if-eqz v0, :cond_2

    .line 289
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "[onDisConnect]app background, don\'t Recreate"

    iget-object v3, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v3}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "[onDisConnect]no network, don\'t Recreate"

    iget-object v3, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v3}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_3
    :try_start_0
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "session disconnected, try to recreate session"

    iget-object v3, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v3}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v1, Lc8/hJ;

    invoke-direct {v1, p0, p1}, Lc8/hJ;-><init>(Lc8/iJ;Lanet/channel/Session;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V
    .locals 9
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "start"    # J
    .param p4, "type"    # Lanet/channel/entity/EventType;
    .param p5, "errorcode"    # I

    .prologue
    .line 179
    const/4 v3, 0x1

    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "Connect failed"

    iget-object v5, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v5}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "session"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v8}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "isHandleFinish"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-boolean v8, p0, Lc8/iJ;->isHandleFinish:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-boolean v3, v3, Lc8/lJ;->isToClose:Z

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lc8/lJ;->isToClose:Z

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-boolean v3, p0, Lc8/iJ;->isHandleFinish:Z

    if-nez v3, :cond_1

    .line 191
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/iJ;->isHandleFinish:Z

    .line 193
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v3}, Lc8/lJ;->access$100(Lc8/lJ;)Lc8/dJ;

    move-result-object v3

    iget-object v4, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v3, v4, p1}, Lc8/dJ;->remove(Lc8/lJ;Lanet/channel/Session;)V

    .line 195
    iget-boolean v3, p1, Lanet/channel/Session;->tryNextWhenFail:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lc8/FK;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/iJ;->strategys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    :cond_3
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v3}, Lc8/lJ;->access$200(Lc8/lJ;)V

    .line 198
    sget-object v3, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v3, p4}, Lanet/channel/entity/EventType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, -0xa35

    if-eq p5, v3, :cond_1

    const/16 v3, -0xa29

    if-eq p5, v3, :cond_1

    .line 201
    new-instance v0, Lc8/yK;

    invoke-direct {v0}, Lc8/yK;-><init>()V

    .line 202
    .local v0, "alarmObject":Lc8/yK;
    const-string/jumbo v3, "networkPrefer"

    iput-object v3, v0, Lc8/yK;->module:Ljava/lang/String;

    .line 203
    const-string/jumbo v3, "policy"

    iput-object v3, v0, Lc8/yK;->modulePoint:Ljava/lang/String;

    .line 204
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v3}, Lc8/lJ;->access$300(Lc8/lJ;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/yK;->arg:Ljava/lang/String;

    .line 205
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/yK;->errorCode:Ljava/lang/String;

    .line 206
    const/4 v3, 0x0

    iput-boolean v3, v0, Lc8/yK;->isSuccess:Z

    .line 207
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    invoke-interface {v3, v0}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 211
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    const/4 v4, 0x0

    iput v4, v3, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 212
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {v3, p5}, Lanet/channel/statist/SessionConnStat;->appendErrorTrace(I)V

    .line 213
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lanet/channel/statist/SessionConnStat;->errorCode:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v6, v6, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v6, v6, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 215
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {v3, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 216
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v3

    iget-object v4, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v4, v4, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v3, v4}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "alarmObject":Lc8/yK;
    :cond_4
    const/4 v3, 0x1

    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 222
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "use next connInfo to create session"

    iget-object v5, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v5}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v8}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_5
    iget-object v3, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    iget v3, v3, Lc8/AJ;->retryTime:I

    iget-object v4, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    iget v4, v4, Lc8/AJ;->maxRetryTime:I

    if-ne v3, v4, :cond_8

    const/16 v3, -0x7d3

    if-eq p5, v3, :cond_6

    const/16 v3, -0x96a

    if-ne p5, v3, :cond_8

    .line 228
    :cond_6
    iget-object v3, p0, Lc8/iJ;->strategys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 229
    .local v2, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/entity/ConnInfo;>;"
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 230
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/AJ;

    .line 231
    .local v1, "ci":Lc8/AJ;
    invoke-virtual {p1}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 232
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 236
    .end local v1    # "ci":Lc8/AJ;
    .end local v2    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/entity/ConnInfo;>;"
    :cond_8
    iget-object v3, p0, Lc8/iJ;->strategys:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/AJ;

    .line 237
    .restart local v1    # "ci":Lc8/AJ;
    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v4, p0, Lc8/iJ;->context:Landroid/content/Context;

    new-instance v5, Lc8/iJ;

    iget-object v6, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v7, p0, Lc8/iJ;->context:Landroid/content/Context;

    iget-object v8, p0, Lc8/iJ;->strategys:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8, v1}, Lc8/iJ;-><init>(Lc8/lJ;Landroid/content/Context;Ljava/util/List;Lc8/AJ;)V

    invoke-virtual {v1}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v1, v5, v6}, Lc8/lJ;->access$400(Lc8/lJ;Landroid/content/Context;Lc8/AJ;Lc8/kJ;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSuccess(Lanet/channel/Session;J)V
    .locals 9
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "start"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    const-string/jumbo v2, "awcn.SessionRequest"

    const-string/jumbo v3, "Connect Success"

    iget-object v4, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v4}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "session"

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v7}, Lc8/lJ;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-boolean v2, v2, Lc8/lJ;->isToClose:Z

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lc8/lJ;->isToClose:Z

    .line 246
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lanet/channel/Session;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v2}, Lc8/lJ;->access$200(Lc8/lJ;)V

    .line 271
    :goto_0
    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v2}, Lc8/lJ;->access$100(Lc8/lJ;)Lc8/dJ;

    move-result-object v2

    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-virtual {v2, v3, p1}, Lc8/dJ;->add(Lc8/lJ;Lanet/channel/Session;)V

    .line 253
    new-instance v0, Lc8/yK;

    invoke-direct {v0}, Lc8/yK;-><init>()V

    .line 254
    .local v0, "alarmObject":Lc8/yK;
    const-string/jumbo v2, "networkPrefer"

    iput-object v2, v0, Lc8/yK;->module:Ljava/lang/String;

    .line 255
    const-string/jumbo v2, "policy"

    iput-object v2, v0, Lc8/yK;->modulePoint:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v2}, Lc8/lJ;->access$300(Lc8/lJ;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/yK;->arg:Ljava/lang/String;

    .line 257
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/yK;->isSuccess:Z

    .line 258
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    invoke-interface {v2, v0}, Lc8/sJ;->commitAlarm(Lc8/yK;)V

    .line 261
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v2, v2, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {v2, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 262
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v2, v2, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    const/4 v3, 0x1

    iput v3, v2, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 263
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v2, v2, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v6, v3, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 264
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v2

    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    iget-object v3, v3, Lc8/lJ;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {v2, v3}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v2}, Lc8/lJ;->access$200(Lc8/lJ;)V

    goto :goto_0

    .line 267
    .end local v0    # "alarmObject":Lc8/yK;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "awcn.SessionRequest"

    const-string/jumbo v3, "[onSuccess]:"

    iget-object v4, p0, Lc8/iJ;->connInfo:Lc8/AJ;

    invoke-virtual {v4}, Lc8/AJ;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    iget-object v2, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v2}, Lc8/lJ;->access$200(Lc8/lJ;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/iJ;->this$0:Lc8/lJ;

    invoke-static {v3}, Lc8/lJ;->access$200(Lc8/lJ;)V

    throw v2
.end method
