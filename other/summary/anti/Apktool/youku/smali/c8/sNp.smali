.class public interface abstract Lc8/sNp;
.super Ljava/lang/Object;
.source "CacheManager.java"


# virtual methods
.method public abstract getBlockName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
.end method

.method public abstract getCacheKey(Lc8/COp;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCacheKey(Lc8/IMp;)Ljava/lang/String;
.end method

.method public abstract isNeedReadCache(Lc8/FPp;Lc8/QNp;)Z
.end method

.method public abstract isNeedWriteCache(Lc8/FPp;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/FPp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract putCache(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z
.end method

.method public abstract putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
.end method
