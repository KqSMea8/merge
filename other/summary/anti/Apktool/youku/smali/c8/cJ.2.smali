.class public Lc8/cJ;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# instance fields
.field public final auth:Lc8/UI;

.field public final dataFrameCb:Lc8/SI;

.field public final heartbeat:Lc8/NJ;

.field public final host:Ljava/lang/String;

.field public final isAccs:Z

.field public final isKeepAlive:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZLc8/UI;Lc8/NJ;Lc8/SI;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "isKeepAlive"    # Z
    .param p3, "isAccs"    # Z
    .param p4, "auth"    # Lc8/UI;
    .param p5, "heartbeat"    # Lc8/NJ;
    .param p6, "dataFrameCb"    # Lc8/SI;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/cJ;->host:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lc8/cJ;->isAccs:Z

    .line 30
    iput-object p4, p0, Lc8/cJ;->auth:Lc8/UI;

    .line 31
    iput-boolean p2, p0, Lc8/cJ;->isKeepAlive:Z

    .line 32
    iput-object p5, p0, Lc8/cJ;->heartbeat:Lc8/NJ;

    .line 33
    iput-object p6, p0, Lc8/cJ;->dataFrameCb:Lc8/SI;

    .line 34
    return-void
.end method

.method public static create(Ljava/lang/String;ZZLc8/UI;Lc8/NJ;Lc8/SI;)Lc8/cJ;
    .locals 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "isKeepAlive"    # Z
    .param p2, "isAccs"    # Z
    .param p3, "auth"    # Lc8/UI;
    .param p4, "heartbeat"    # Lc8/NJ;
    .param p5, "dataFrameCb"    # Lc8/SI;

    .prologue
    .line 24
    new-instance v0, Lc8/cJ;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/cJ;-><init>(Ljava/lang/String;ZZLc8/UI;Lc8/NJ;Lc8/SI;)V

    return-object v0
.end method
