.class public interface abstract Lcom/youku/us/baseframework/download/extend/ExtendHandler$ExtendListener;
.super Ljava/lang/Object;
.source "ExtendHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/us/baseframework/download/extend/ExtendHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendListener"
.end annotation


# virtual methods
.method public abstract onCompleted(I)V
.end method

.method public abstract onExtendError(ILjava/lang/String;)V
.end method

.method public abstract onProgressChanged(II)V
.end method
