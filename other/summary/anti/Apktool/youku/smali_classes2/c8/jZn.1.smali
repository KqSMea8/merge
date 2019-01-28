.class public interface abstract Lc8/jZn;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadCanceled(I)V
.end method

.method public abstract onDownloadCompleted(I)V
.end method

.method public abstract onDownloadError(ILjava/lang/String;)V
.end method

.method public abstract onDownloadPaused(I)V
.end method

.method public abstract onProgressChanged(II)V
.end method
