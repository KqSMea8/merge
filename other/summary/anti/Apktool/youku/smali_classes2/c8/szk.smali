.class public Lc8/szk;
.super Lc8/Dvf;
.source "YoukuCacheKeyInspector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lc8/Dvf;-><init>()V

    return-void
.end method


# virtual methods
.method public inspectDiskCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "suggestKey"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5f53\u524d\u83b7\u53d6\u7f13\u5b58key\u573a\u666f\uff1aPhenix.DiskCacheKey"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0, p2}, Lcom/youku/phone/phenix/PhenixUtil;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inspectMemoryCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "suggestKey"    # Ljava/lang/String;

    .prologue
    .line 10
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5f53\u524d\u83b7\u53d6\u7f13\u5b58key\u573a\u666f\uff1aPhenix.MemoryCacheKey"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0, p2}, Lcom/youku/phone/phenix/PhenixUtil;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
