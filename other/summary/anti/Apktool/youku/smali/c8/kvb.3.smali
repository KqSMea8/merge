.class public Lc8/kvb;
.super Ljava/lang/Object;
.source "PreRenderCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public data:Lc8/nVf;

.field public ignoreParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lastModified:J

.field public ttl:J

.field public used:Z

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFresh()Z
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/kvb;->lastModified:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc8/kvb;->ttl:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
