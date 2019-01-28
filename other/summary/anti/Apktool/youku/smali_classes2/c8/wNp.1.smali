.class public Lc8/wNp;
.super Ljava/lang/Object;
.source "CacheParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vNp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lc8/DNp;
    .locals 4
    .param p0, "cacheStatus"    # Lanetwork/network/cache/RpcCache$CacheStatus;

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v0, Lc8/yNp;

    invoke-direct {v0}, Lc8/yNp;-><init>()V

    .local v0, "cacheParser":Lc8/DNp;
    move-object v1, v0

    .line 29
    .end local v0    # "cacheParser":Lc8/DNp;
    .local v1, "cacheParser":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 17
    .end local v1    # "cacheParser":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lc8/vNp;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    invoke-virtual {p0}, Lanetwork/network/cache/RpcCache$CacheStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 25
    new-instance v0, Lc8/yNp;

    invoke-direct {v0}, Lc8/yNp;-><init>()V

    .restart local v0    # "cacheParser":Lc8/DNp;
    :goto_1
    move-object v1, v0

    .line 29
    .restart local v1    # "cacheParser":Ljava/lang/Object;
    goto :goto_0

    .line 19
    .end local v0    # "cacheParser":Lc8/DNp;
    .end local v1    # "cacheParser":Ljava/lang/Object;
    :pswitch_0
    new-instance v0, Lc8/CNp;

    invoke-direct {v0}, Lc8/CNp;-><init>()V

    .line 20
    .restart local v0    # "cacheParser":Lc8/DNp;
    goto :goto_1

    .line 22
    .end local v0    # "cacheParser":Lc8/DNp;
    :pswitch_1
    new-instance v0, Lc8/ANp;

    invoke-direct {v0}, Lc8/ANp;-><init>()V

    .line 23
    .restart local v0    # "cacheParser":Lc8/DNp;
    goto :goto_1

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
