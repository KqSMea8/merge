.class public interface abstract Lc8/Apf;
.super Ljava/lang/Object;
.source "CacheEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    }
.end annotation


# virtual methods
.method public abstract onEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V
.end method

.method public abstract onHit()V
.end method

.method public abstract onMiss()V
.end method

.method public abstract onReadException()V
.end method

.method public abstract onWriteAttempt()V
.end method

.method public abstract onWriteException()V
.end method
