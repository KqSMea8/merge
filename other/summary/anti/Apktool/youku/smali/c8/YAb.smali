.class public Lc8/YAb;
.super Ljava/lang/Object;
.source "TnetHostPortMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TnetHostPort"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "adashx.m.taobao.com"

    iput-object v0, p0, Lc8/YAb;->host:Ljava/lang/String;

    .line 68
    const/16 v0, 0x1bb

    iput v0, p0, Lc8/YAb;->port:I

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/YAb;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lc8/YAb;->port:I

    return v0
.end method
