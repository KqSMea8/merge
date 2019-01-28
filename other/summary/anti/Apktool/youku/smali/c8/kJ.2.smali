.class public interface abstract Lc8/kJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IConnCb"
.end annotation


# virtual methods
.method public abstract onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V
.end method

.method public abstract onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V
.end method

.method public abstract onSuccess(Lanet/channel/Session;J)V
.end method
