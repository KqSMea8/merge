.class public Lc8/kvf;
.super Ljava/lang/Object;
.source "GifImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lc8/Wuf;->GIF:Lc8/Yuf;

    invoke-static {v0}, Lc8/nuf;->canSupport(Lc8/Yuf;)Z

    move-result v0

    return v0
.end method
