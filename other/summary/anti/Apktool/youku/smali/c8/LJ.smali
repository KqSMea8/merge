.class public final Lc8/LJ;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"

# interfaces
.implements Lc8/OJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHeartbeat(Lanet/channel/Session;)Lc8/NJ;
    .locals 1
    .param p1, "session"    # Lanet/channel/Session;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lanet/channel/Session;->getConnStrategy()Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    if-gtz v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lc8/KJ;

    invoke-direct {v0, p1}, Lc8/KJ;-><init>(Lanet/channel/Session;)V

    goto :goto_0
.end method
