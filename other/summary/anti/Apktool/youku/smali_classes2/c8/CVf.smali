.class public interface abstract Lc8/CVf;
.super Ljava/lang/Object;
.source "IWXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DVf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHttpListener"
.end annotation


# virtual methods
.method public abstract onHeadersReceived(ILjava/util/Map;)V
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

.method public abstract onHttpFinish(Lc8/SXf;)V
.end method

.method public abstract onHttpResponseProgress(I)V
.end method

.method public abstract onHttpStart()V
.end method

.method public abstract onHttpUploadProgress(I)V
.end method
