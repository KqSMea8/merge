.class public abstract Lc8/Dvf;
.super Ljava/lang/Object;
.source "CacheKeyInspector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inspectDiskCacheCatalog(Ljava/lang/String;I)I
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "suggestCatalog"    # I

    .prologue
    .line 31
    return p2
.end method

.method public abstract inspectDiskCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract inspectMemoryCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
