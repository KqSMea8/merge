.class public Lc8/Gng;
.super Lc8/Cng;
.source "PullAntUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fng;
    }
.end annotation


# instance fields
.field private lastRequestTimestamp:J

.field mAntConfigFetcher:Lc8/aog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Ong;Lc8/Xng;Lc8/Rng;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antStore"    # Lc8/Ong;
    .param p3, "antNotifier"    # Lc8/Xng;
    .param p4, "builder"    # Lc8/Rng;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lc8/Cng;-><init>(Landroid/content/Context;Lc8/Ong;Lc8/Xng;)V

    .line 34
    new-instance v1, Lc8/Eng;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v0}, Lc8/Eng;-><init>(Landroid/content/Context;Lc8/AOp;)V

    iput-object v1, p0, Lc8/Gng;->mAntConfigFetcher:Lc8/aog;

    .line 35
    return-void

    .line 34
    :cond_0
    iget-object v0, p4, Lc8/Rng;->mtop:Lc8/AOp;

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Gng;)Lc8/Ong;
    .locals 1
    .param p0, "x0"    # Lc8/Gng;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Gng;->mAntStore:Lc8/Ong;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Gng;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Gng;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/Gng;->needCheckConfigVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/Gng;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Gng;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/Gng;->isForceUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lc8/Gng;)Lc8/Ong;
    .locals 1
    .param p0, "x0"    # Lc8/Gng;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Gng;->mAntStore:Lc8/Ong;

    return-object v0
.end method

.method static synthetic access$400(Lc8/Gng;)Lc8/Ong;
    .locals 1
    .param p0, "x0"    # Lc8/Gng;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Gng;->mAntStore:Lc8/Ong;

    return-object v0
.end method

.method static synthetic access$500(Lc8/Gng;)Lc8/Ong;
    .locals 1
    .param p0, "x0"    # Lc8/Gng;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Gng;->mAntStore:Lc8/Ong;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Gng;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Gng;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lc8/Gng;->notifyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private isForceUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v0, "hybrid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private needCheckConfigVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v0, "orange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lc8/Gng;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 132
    return-void
.end method


# virtual methods
.method public updateAntData(Ljava/lang/String;)V
    .locals 10
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    .local v0, "currentTime":J
    iget-wide v6, p0, Lc8/Gng;->lastRequestTimestamp:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1388

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 52
    .end local v0    # "currentTime":J
    :goto_0
    return-void

    .line 45
    .restart local v0    # "currentTime":J
    :cond_0
    iput-wide v0, p0, Lc8/Gng;->lastRequestTimestamp:J

    .line 46
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-object v5, p0, Lc8/Gng;->mAntStore:Lc8/Ong;

    iget v5, v5, Lc8/Ong;->requestDelay:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-long v2, v6

    .line 47
    .local v2, "delay":J
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAntData sourceName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  delay: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lc8/Lng;->instance()Lc8/Lng;

    move-result-object v5

    new-instance v6, Lc8/Fng;

    invoke-direct {v6, p0, p1}, Lc8/Fng;-><init>(Lc8/Gng;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2, v3}, Lc8/Lng;->executeDelay(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v0    # "currentTime":J
    .end local v2    # "delay":J
    :catch_0
    move-exception v4

    .line 50
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
