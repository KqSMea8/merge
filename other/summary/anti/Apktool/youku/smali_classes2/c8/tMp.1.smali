.class public Lc8/tMp;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rMp;,
        Lc8/sMp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.LocalConfig"


# instance fields
.field public enableErrorCodeMapping:Z

.field public enableProperty:Z

.field public enableRemoteNetworkService:Z

.field public enableSpdy:Z

.field public enableSsl:Z

.field public enableUnit:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lc8/tMp;->enableErrorCodeMapping:Z

    .line 22
    iput-boolean v0, p0, Lc8/tMp;->enableSpdy:Z

    .line 24
    iput-boolean v0, p0, Lc8/tMp;->enableUnit:Z

    .line 26
    iput-boolean v0, p0, Lc8/tMp;->enableSsl:Z

    .line 28
    iput-boolean v0, p0, Lc8/tMp;->enableProperty:Z

    .line 30
    iput-boolean v0, p0, Lc8/tMp;->enableRemoteNetworkService:Z

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lc8/rMp;)V
    .locals 0
    .param p1, "x0"    # Lc8/rMp;

    .prologue
    .line 4
    invoke-direct {p0}, Lc8/tMp;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/tMp;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lc8/sMp;->access$100()Lc8/tMp;

    move-result-object v0

    return-object v0
.end method
