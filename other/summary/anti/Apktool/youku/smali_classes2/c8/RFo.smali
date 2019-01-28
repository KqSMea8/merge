.class public abstract Lc8/RFo;
.super Ljava/lang/Object;
.source "VipAbstractManager.java"

# interfaces
.implements Lc8/UFo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Lc8/RFo;->checkPool()V

    .line 15
    invoke-virtual {p0}, Lc8/RFo;->init()V

    .line 16
    return-void
.end method


# virtual methods
.method public checkPool()V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lc8/RFo;->push2Pool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Lc8/bGo;->contains(Lc8/RFo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lc8/bGo;->add(Lc8/RFo;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected getDataBroadcast()Lc8/VFo;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lc8/QFo;->getBroadcast()Lc8/VFo;

    move-result-object v0

    return-object v0
.end method

.method public abstract init()V
.end method

.method public onReceive(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    return-void
.end method

.method public push2Pool()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public abstract release()V
.end method

.method protected sendBroadcast(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    if-nez p3, :cond_0

    .line 45
    invoke-virtual {p0}, Lc8/RFo;->getDataBroadcast()Lc8/VFo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lc8/RFo;->getDataBroadcast()Lc8/VFo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
