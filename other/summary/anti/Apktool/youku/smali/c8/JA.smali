.class public interface abstract Lc8/JA;
.super Ljava/lang/Object;
.source "BundleReleaser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessCallBack"
.end annotation


# virtual methods
.method public abstract onAllFinish()V
.end method

.method public abstract onFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onFinish(I)V
.end method
