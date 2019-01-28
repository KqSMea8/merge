.class public abstract Lc8/ovk;
.super Ljava/lang/Object;
.source "BaseOperator.java"


# instance fields
.field private lastUpdate:J

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/ovk;->lastUpdate:J

    .line 17
    iput-object p1, p0, Lc8/ovk;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public debugLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "logStr"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/ovk;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract initCache()V
.end method

.method public update()V
    .locals 6

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, "nowUpdate":J
    iget-wide v2, p0, Lc8/ovk;->lastUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 27
    iput-wide v0, p0, Lc8/ovk;->lastUpdate:J

    .line 29
    :cond_0
    return-void
.end method
