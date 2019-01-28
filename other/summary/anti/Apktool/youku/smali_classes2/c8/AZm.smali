.class public Lc8/AZm;
.super Ljava/lang/Object;
.source "MotuReporterFilterImpl.java"

# interfaces
.implements Lc8/uZm;


# static fields
.field public static final DEFAULT_TIME_LIMIT:J = 0xa4cb800L

.field public static final MOTU_REPORTER_RETRY_POLICY:Ljava/lang/String; = "motu_reporter_retry_policy"

.field public static final TIME_LIMIT:Ljava/lang/String; = "time_limit"


# instance fields
.field private uploadTimeLimit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lc8/AZm;->uploadTimeLimit:J

    .line 24
    invoke-direct {p0}, Lc8/AZm;->initConfig()V

    .line 25
    return-void
.end method

.method private initConfig()V
    .locals 6

    .prologue
    .line 29
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "motu_reporter_retry_policy"

    const-string/jumbo v3, "time_limit"

    const-wide/32 v4, 0xa4cb800

    .line 30
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/AZm;->uploadTimeLimit:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/BZm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "ykSendModules":Ljava/util/List;, "Ljava/util/List<Lcom/youku/reporter/YKSendModule;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, "currentTime":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/youku/reporter/YKSendModule;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/BZm;

    .line 48
    .local v3, "ykSendModule":Lc8/BZm;
    iget-wide v4, v3, Lc8/BZm;->lastSendTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 52
    iget-wide v4, v3, Lc8/BZm;->beginSendTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lc8/AZm;->uploadTimeLimit:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 54
    invoke-static {}, Lc8/yZm;->getInstance()Lc8/yZm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc8/yZm;->deleteUploadModule(Lc8/BZm;)V

    goto :goto_0
.end method
