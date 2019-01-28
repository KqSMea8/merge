.class public interface abstract Lc8/VI;
.super Ljava/lang/Object;
.source "RequestCb.java"


# virtual methods
.method public abstract onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
.end method

.method public abstract onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
.end method

.method public abstract onResponseCode(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
