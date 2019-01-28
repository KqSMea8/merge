.class public Lc8/BZn;
.super Ljava/lang/Object;
.source "Base62.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 2
    .param p0, "base62"    # Ljava/lang/String;

    .prologue
    .line 9
    const/16 v0, 0x3e

    invoke-static {p0, v0}, Lc8/UZn;->decode(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static encode(J)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # J

    .prologue
    .line 5
    const/16 v0, 0x3e

    invoke-static {p0, p1, v0}, Lc8/UZn;->encode(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
