.class public Lc8/WN;
.super Ljava/lang/Object;
.source "StatisticReqTimes.java"


# static fields
.field private static instance:Lc8/WN;


# instance fields
.field private currentReqUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finalResult:J

.field private isStarting:Z

.field private startPoint:J

.field private whiteReqUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lc8/WN;->initAttrs()V

    .line 30
    return-void
.end method

.method public static getIntance()Lc8/WN;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lc8/WN;->instance:Lc8/WN;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lc8/WN;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lc8/WN;->instance:Lc8/WN;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lc8/WN;

    invoke-direct {v0}, Lc8/WN;-><init>()V

    sput-object v0, Lc8/WN;->instance:Lc8/WN;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lc8/WN;->instance:Lc8/WN;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initAttrs()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/WN;->isStarting:Z

    .line 45
    iput-wide v2, p0, Lc8/WN;->startPoint:J

    .line 46
    iput-wide v2, p0, Lc8/WN;->finalResult:J

    .line 47
    iget-object v0, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    .line 52
    :goto_0
    iget-object v0, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    .line 55
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public putReq(Lc8/XL;)V
    .locals 4
    .param p1, "httpUrl"    # Lc8/XL;

    .prologue
    .line 97
    iget-boolean v1, p0, Lc8/WN;->isStarting:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lc8/XL;->path()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/WN;->startPoint:J

    .line 103
    :cond_0
    iget-object v1, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateReqTimes(Lc8/XL;J)V
    .locals 8
    .param p1, "httpUrl"    # Lc8/XL;
    .param p2, "endTime"    # J

    .prologue
    .line 109
    iget-boolean v3, p0, Lc8/WN;->isStarting:Z

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lc8/XL;->path()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lc8/WN;->currentReqUrls:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/WN;->startPoint:J

    sub-long v0, v4, v6

    .line 114
    .local v0, "curReqTimes":J
    const-string/jumbo v3, "awcn.StatisticReqTimes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this req spend times: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-wide v4, p0, Lc8/WN;->finalResult:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lc8/WN;->finalResult:J

    .line 119
    .end local v0    # "curReqTimes":J
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateWhiteReqUrls(Ljava/lang/String;)V
    .locals 7
    .param p1, "urlsFromOrange"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 63
    iget-object v2, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    if-nez v2, :cond_2

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    .line 68
    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string/jumbo v2, "awcn.StatisticReqTimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "urlsFromOrange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "keyIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v3, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "keyIter":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "awcn.StatisticReqTimes"

    const-string/jumbo v3, "whiteReqUrls from orange isnot json format"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v2, p0, Lc8/WN;->whiteReqUrls:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method
