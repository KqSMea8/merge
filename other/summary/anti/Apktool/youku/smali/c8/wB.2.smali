.class public Lc8/wB;
.super Ljava/lang/Object;
.source "WVMemoryCacheInfo.java"


# instance fields
.field public cachedTime:J

.field public mCachedDatas:[B

.field public mCachedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;[B)V
    .locals 2
    .param p2, "datas"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lc8/wB;->mCachedHeaders:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lc8/wB;->mCachedDatas:[B

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/wB;->cachedTime:J

    .line 16
    iput-object p2, p0, Lc8/wB;->mCachedDatas:[B

    .line 17
    iput-object p1, p0, Lc8/wB;->mCachedHeaders:Ljava/util/Map;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/wB;->cachedTime:J

    .line 19
    return-void
.end method
