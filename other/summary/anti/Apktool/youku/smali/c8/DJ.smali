.class public Lc8/DJ;
.super Lc8/EJ;
.source "DisconnectedEvent.java"


# instance fields
.field public sdkForceClose:Z


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lanet/channel/entity/EventType;
    .param p2, "forceClose"    # Z
    .param p3, "errorCode"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1, p3, p4}, Lc8/EJ;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    .line 8
    iput-boolean p2, p0, Lc8/DJ;->sdkForceClose:Z

    .line 9
    return-void
.end method
