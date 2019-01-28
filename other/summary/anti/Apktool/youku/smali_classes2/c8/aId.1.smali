.class public interface abstract Lc8/aId;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# virtual methods
.method public abstract addHeaders(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
.end method

.method public abstract addHeaders(Ljava/util/HashMap;)Lc8/aId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/aId;"
        }
    .end annotation
.end method

.method public abstract addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
.end method

.method public abstract addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/aId;
.end method

.method public abstract addQueryParameter(Ljava/util/HashMap;)Lc8/aId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/aId;"
        }
    .end annotation
.end method

.method public abstract doNotCacheResponse()Lc8/aId;
.end method

.method public abstract getResponseOnlyFromNetwork()Lc8/aId;
.end method

.method public abstract getResponseOnlyIfCached()Lc8/aId;
.end method

.method public abstract setExecutor(Ljava/util/concurrent/Executor;)Lc8/aId;
.end method

.method public abstract setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
.end method

.method public abstract setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lc8/aId;
.end method

.method public abstract setPriority(Lcom/meizu/cloud/pushsdk/networking/common/Priority;)Lc8/aId;
.end method

.method public abstract setTag(Ljava/lang/Object;)Lc8/aId;
.end method

.method public abstract setUserAgent(Ljava/lang/String;)Lc8/aId;
.end method
