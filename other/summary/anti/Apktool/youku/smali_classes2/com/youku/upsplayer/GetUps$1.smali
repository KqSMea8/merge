.class public final Lcom/youku/upsplayer/GetUps$1;
.super Ljava/util/HashSet;
.source "GetUps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LXn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 60
    const-string/jumbo v0, "mdl"

    invoke-virtual {p0, v0}, Lcom/youku/upsplayer/GetUps$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-string/jumbo v0, "device_brand"

    invoke-virtual {p0, v0}, Lcom/youku/upsplayer/GetUps$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-string/jumbo v0, "osv"

    invoke-virtual {p0, v0}, Lcom/youku/upsplayer/GetUps$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-string/jumbo v0, "ua"

    invoke-virtual {p0, v0}, Lcom/youku/upsplayer/GetUps$1;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
