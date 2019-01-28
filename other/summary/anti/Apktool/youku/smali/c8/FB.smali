.class public abstract Lc8/FB;
.super Ljava/lang/Object;
.source "WVConfigHandler.java"


# instance fields
.field private isUpdating:Z

.field private snapshotN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/FB;->isUpdating:Z

    .line 7
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/FB;->snapshotN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSnapshotN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/FB;->snapshotN:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatus()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lc8/FB;->isUpdating:Z

    return v0
.end method

.method public setSnapshotN(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/FB;->snapshotN:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUpdateStatus(Z)V
    .locals 0
    .param p1, "updating"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lc8/FB;->isUpdating:Z

    .line 19
    return-void
.end method

.method public abstract update(Ljava/lang/String;Lc8/LB;)V
.end method
