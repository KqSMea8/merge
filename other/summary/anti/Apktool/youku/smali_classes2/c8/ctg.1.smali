.class public Lc8/ctg;
.super Ljava/lang/Object;
.source "CustomizedSession.java"

# interfaces
.implements Lc8/yXp;
.implements Lc8/zXp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/btg;,
        Lc8/atg;
    }
.end annotation


# instance fields
.field private a:Lc8/vtg;

.field private b:Lc8/CXp;

.field private c:Lorg/android/spdy/SpdySession;

.field private final d:Landroid/content/Context;

.field private final e:Lc8/itg;

.field private volatile f:Lc8/atg;

.field private volatile g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/btg;",
            ">;"
        }
    .end annotation
.end field

.field private final i:I


# direct methods
.method public constructor <init>(Lc8/vtg;Lc8/itg;)V
    .locals 1
    .param p1, "config"    # Lc8/vtg;
    .param p2, "target"    # Lc8/itg;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string/jumbo v0, "DISCONNECTED"

    iput-object v0, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/ctg;->h:Ljava/util/List;

    .line 126
    iput-object p1, p0, Lc8/ctg;->a:Lc8/vtg;

    .line 127
    iget-object v0, p1, Lc8/vtg;->c:Landroid/content/Context;

    iput-object v0, p0, Lc8/ctg;->d:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lc8/ctg;->e:Lc8/itg;

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lc8/ctg;->i:I

    .line 130
    return-void
.end method

.method static synthetic a(Lc8/ctg;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/ctg;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/ctg;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 387
    iget-object v2, p0, Lc8/ctg;->h:Ljava/util/List;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v1, p0, Lc8/ctg;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 389
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    const/16 v0, 0x8

    .line 392
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession onClose, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    iget-object v1, p0, Lc8/ctg;->f:Lc8/atg;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lc8/ctg;->f:Lc8/atg;

    invoke-interface {v1, p1}, Lc8/atg;->a(I)V

    .line 399
    :cond_1
    return-void

    .line 389
    .end local v0    # "p":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private a(Lc8/btg;)V
    .locals 5
    .param p1, "waitingData"    # Lc8/btg;

    .prologue
    .line 425
    iget-object v3, p0, Lc8/ctg;->h:Ljava/util/List;

    monitor-enter v3

    .line 426
    :try_start_0
    iget-object v2, p0, Lc8/ctg;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    const/16 v1, 0x8

    .line 428
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 430
    .local v0, "log":Ljava/lang/StringBuilder;
    iget v2, p0, Lc8/ctg;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " [addWaitingData] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", mSession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v2, "CustomizedSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0    # "log":Ljava/lang/StringBuilder;
    :cond_0
    monitor-exit v3

    return-void

    .line 430
    .restart local v0    # "log":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 433
    .end local v0    # "log":Ljava/lang/StringBuilder;
    .end local v1    # "p":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic b(Lc8/ctg;)Lc8/vtg;
    .locals 1
    .param p0, "x0"    # Lc8/ctg;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/ctg;->a:Lc8/vtg;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 238
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lc8/CXp;->enableDebug:Z

    .line 239
    iget-object v2, p0, Lc8/ctg;->d:Landroid/content/Context;

    sget-object v3, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v4, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v2, v3, v4}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v2

    iput-object v2, p0, Lc8/ctg;->b:Lc8/CXp;

    .line 240
    iget-object v2, p0, Lc8/ctg;->e:Lc8/itg;

    iget-boolean v2, v2, Lc8/itg;->f:Z

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lc8/ctg;->b:Lc8/CXp;

    new-instance v3, Lc8/Ysg;

    invoke-direct {v3, p0}, Lc8/Ysg;-><init>(Lc8/ctg;)V

    invoke-virtual {v2, v3}, Lc8/CXp;->setAccsSslCallback(Lc8/tXp;)V

    .line 256
    :cond_0
    const/4 v1, 0x4

    .line 257
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const-string/jumbo v2, "CustomizedSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lc8/ctg;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " initSpdyAgent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 260
    .end local v1    # "p":I
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x10

    .line 262
    .restart local v1    # "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    const-string/jumbo v2, "CustomizedSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lc8/ctg;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " init SpdyAgent failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 404
    iget-object v4, p0, Lc8/ctg;->h:Ljava/util/List;

    monitor-enter v4

    .line 405
    :try_start_0
    iget-object v3, p0, Lc8/ctg;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    monitor-exit v4

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v3, p0, Lc8/ctg;->h:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/btg;

    .line 409
    .local v0, "nextData":Lc8/btg;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    move-object v2, v0

    .local v2, "waitingData":Lc8/btg;
    if-eqz v0, :cond_0

    .line 413
    new-instance v1, Lc8/Zsg;

    invoke-direct {v1, p0, v2}, Lc8/Zsg;-><init>(Lc8/ctg;Lc8/btg;)V

    .line 419
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {v1}, Lc8/Etg;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 409
    .end local v0    # "nextData":Lc8/btg;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "waitingData":Lc8/btg;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    .line 137
    invoke-virtual {p0}, Lc8/ctg;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    const/16 v10, 0x8

    .line 139
    .local v10, "p":I
    invoke-static {v10}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string/jumbo v2, "CustomizedSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " CustomizedSession already connected,mSession:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v2, v1}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 140
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 145
    .end local v10    # "p":I
    :cond_2
    :try_start_0
    const-string/jumbo v1, "CONNECTING"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lc8/ctg;->e:Lc8/itg;

    iget-boolean v1, v1, Lc8/itg;->f:Z

    if-eqz v1, :cond_6

    const/16 v8, 0x1090

    .line 147
    .local v8, "protocol":I
    :goto_2
    new-instance v0, Lc8/AXp;

    iget-object v1, p0, Lc8/ctg;->e:Lc8/itg;

    iget-object v1, v1, Lc8/itg;->a:Ljava/lang/String;

    iget-object v2, p0, Lc8/ctg;->e:Lc8/itg;

    iget v2, v2, Lc8/itg;->b:I

    iget v3, p0, Lc8/ctg;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lc8/AXp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lc8/yXp;I)V

    .line 148
    .local v0, "info":Lc8/AXp;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lc8/AXp;->setConnectionTimeoutMs(I)V

    .line 150
    iget-object v1, p0, Lc8/ctg;->e:Lc8/itg;

    iget-boolean v1, v1, Lc8/itg;->f:Z

    if-eqz v1, :cond_3

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Lc8/ctg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->b:Lc8/tsg;

    invoke-virtual {v2}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v2

    iget v2, v2, Lc8/gsg;->environment:I

    if-ne v1, v2, :cond_7

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/AXp;->setPubKeySeqNum(I)V

    .line 158
    :cond_3
    :goto_3
    iget-object v1, p0, Lc8/ctg;->b:Lc8/CXp;

    if-nez v1, :cond_4

    .line 159
    invoke-direct {p0}, Lc8/ctg;->d()V

    .line 162
    :cond_4
    iget-object v1, p0, Lc8/ctg;->b:Lc8/CXp;

    invoke-virtual {v1, v0}, Lc8/CXp;->createSession(Lc8/AXp;)Lorg/android/spdy/SpdySession;

    move-result-object v1

    iput-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    .line 163
    const/4 v10, 0x4

    .line 164
    .restart local v10    # "p":I
    invoke-static {v10}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession createSession,mSession:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " getRefCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v3}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 167
    .end local v0    # "info":Lc8/AXp;
    .end local v8    # "protocol":I
    .end local v10    # "p":I
    :catch_0
    move-exception v9

    .line 168
    .local v9, "e":Lorg/android/spdy/SpdyErrorException;
    const-string/jumbo v1, "CONNECTFAILED"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 169
    const/16 v10, 0x10

    .line 170
    .restart local v10    # "p":I
    invoke-static {v10}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "CustomizedSession connect failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2, v9}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_5
    invoke-virtual {v9}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v1

    invoke-direct {p0, v1}, Lc8/ctg;->a(I)V

    goto/16 :goto_1

    .line 146
    .end local v9    # "e":Lorg/android/spdy/SpdyErrorException;
    .end local v10    # "p":I
    :cond_6
    const/16 v8, 0x10

    goto/16 :goto_2

    .line 154
    .restart local v0    # "info":Lc8/AXp;
    .restart local v8    # "protocol":I
    :cond_7
    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {v0, v1}, Lc8/AXp;->setPubKeySeqNum(I)V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public a(I[BI)V
    .locals 10
    .param p1, "sendSequence"    # I
    .param p2, "data"    # [B
    .param p3, "length"    # I

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0}, Lc8/ctg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const/16 v9, 0x10

    .line 193
    .local v9, "p":I
    invoke-static {v9}, Lc8/Tsg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v8, "log":Ljava/lang/StringBuilder;
    iget v0, p0, Lc8/ctg;->i:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " send failed, needConnect and return, sequence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v0, ", length="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v0, "CustomizedSession"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v8    # "log":Ljava/lang/StringBuilder;
    .end local v9    # "p":I
    :cond_0
    :goto_1
    return-void

    .line 196
    .restart local v8    # "log":Ljava/lang/StringBuilder;
    .restart local v9    # "p":I
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 202
    .end local v8    # "log":Ljava/lang/StringBuilder;
    .end local v9    # "p":I
    :cond_2
    iget-object v0, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move v1, p1

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 203
    const/4 v9, 0x4

    .line 204
    .restart local v9    # "p":I
    invoke-static {v9}, Lc8/Tsg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .restart local v8    # "log":Ljava/lang/StringBuilder;
    iget v0, p0, Lc8/ctg;->i:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " send sendCustomControlFrame. sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v0, ", length="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v0, "CustomizedSession"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v8    # "log":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    invoke-interface {v0, p1}, Lc8/atg;->b(I)V

    goto :goto_1

    .line 210
    .end local v9    # "p":I
    :catch_0
    move-exception v6

    .line 211
    .local v6, "e":Lorg/android/spdy/SpdyErrorException;
    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v7

    .line 212
    .local v7, "errorCode":I
    const/16 v0, -0xf08

    if-ne v0, v7, :cond_4

    .line 213
    new-instance v0, Lc8/btg;

    invoke-direct {v0, p2, p3, p1}, Lc8/btg;-><init>([BII)V

    invoke-direct {p0, v0}, Lc8/ctg;->a(Lc8/btg;)V

    goto :goto_1

    .line 215
    :cond_4
    const/16 v9, 0x10

    .line 216
    .restart local v9    # "p":I
    invoke-static {v9}, Lc8/Tsg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    const-string/jumbo v0, "CustomizedSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lc8/ctg;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " send sendCustomControlFrame failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1, v6}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :cond_5
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    invoke-interface {v0, p1, v7}, Lc8/atg;->a(II)V

    goto/16 :goto_1
.end method

.method public a(Lc8/atg;)V
    .locals 0
    .param p1, "sessionCallback"    # Lc8/atg;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/ctg;->f:Lc8/atg;

    .line 134
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 180
    const/4 v0, 0x4

    .line 181
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession closeSession,session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/ctg;->c:Lorg/android/spdy/SpdySession;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "p":I
    :cond_0
    const-string/jumbo v1, "DISCONNECTED"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "pingId"    # I

    .prologue
    .line 340
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 383
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CONNECTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 5
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 345
    :try_start_0
    iget-object v2, p0, Lc8/ctg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->b:Lc8/tsg;

    iget-object v3, p0, Lc8/ctg;->d:Landroid/content/Context;

    const-string/jumbo v4, "ARUP_SSL_TICKET_KEY"

    invoke-virtual {v2, v3, v4}, Lc8/tsg;->getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 352
    :goto_0
    return-object v2

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x10

    .line 348
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const-string/jumbo v2, "CustomizedSession"

    const-string/jumbo v3, "CustomizedSession call config.getSslTicket error."

    invoke-static {v1, v2, v3, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 5
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sslMeta"    # [B

    .prologue
    .line 358
    :try_start_0
    iget-object v2, p0, Lc8/ctg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->b:Lc8/tsg;

    iget-object v3, p0, Lc8/ctg;->d:Landroid/content/Context;

    const-string/jumbo v4, "ARUP_SSL_TICKET_KEY"

    invoke-virtual {v2, v3, v4, p2}, Lc8/tsg;->putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 365
    :goto_0
    return v2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x10

    .line 361
    .local v1, "p":I
    invoke-static {v1}, Lc8/Tsg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    const-string/jumbo v2, "CustomizedSession"

    const-string/jumbo v3, "CustomizedSession call config.putSslTicket error."

    invoke-static {v1, v2, v3, v0}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "id"    # I
    .param p4, "error"    # I

    .prologue
    .line 297
    const/4 v0, 0x4

    .line 298
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession spdyCustomControlFrameFailCallback, session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 1
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "node"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    .prologue
    .line 290
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lc8/ctg;->f:Lc8/atg;

    invoke-interface {v0, p7, p6}, Lc8/atg;->a([BI)V

    .line 293
    :cond_0
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "unique_id"    # J
    .param p4, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    .line 286
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    .line 324
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->clearAllStreamCb()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    :goto_0
    const-string/jumbo v1, "DISCONNECTED"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 330
    const/4 v0, 0x2

    .line 331
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const-string/jumbo v2, "CustomizedSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " CustomizedSession spdySessionCloseCallback,session:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    invoke-direct {p0, p4}, Lc8/ctg;->a(I)V

    .line 335
    return-void

    .line 332
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1

    .end local v0    # "p":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "data"    # Lorg/android/spdy/SuperviseConnectInfo;

    .prologue
    .line 271
    const-string/jumbo v1, "CONNECTED"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 272
    const/4 v0, 0x4

    .line 273
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession spdySessionConnectCB,session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v1, p0, Lc8/ctg;->f:Lc8/atg;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lc8/ctg;->f:Lc8/atg;

    invoke-interface {v1}, Lc8/atg;->a()V

    .line 280
    :cond_1
    invoke-direct {p0}, Lc8/ctg;->e()V

    .line 281
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "error"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    .line 310
    :cond_0
    const-string/jumbo v1, "CONNECTFAILED"

    iput-object v1, p0, Lc8/ctg;->g:Ljava/lang/String;

    .line 311
    const/4 v0, 0x4

    .line 312
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession spdySessionFailedError,session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    invoke-direct {p0, p2}, Lc8/ctg;->a(I)V

    .line 316
    return-void
.end method

.method public spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "size"    # I

    .prologue
    .line 371
    const/16 v0, 0x8

    .line 372
    .local v0, "p":I
    invoke-static {v0}, Lc8/Tsg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string/jumbo v1, "CustomizedSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/ctg;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CustomizedSession spdySessionOnWritable session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Tsg;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    invoke-direct {p0}, Lc8/ctg;->e()V

    .line 378
    return-void
.end method
