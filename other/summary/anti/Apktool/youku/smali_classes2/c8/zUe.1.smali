.class public final Lc8/zUe;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yUe;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lc8/cTe;

.field public final networkRequest:Lc8/VSe;


# direct methods
.method private constructor <init>(Lc8/VSe;Lc8/cTe;)V
    .locals 0
    .param p1, "networkRequest"    # Lc8/VSe;
    .param p2, "cacheResponse"    # Lc8/cTe;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/zUe;->networkRequest:Lc8/VSe;

    .line 41
    iput-object p2, p0, Lc8/zUe;->cacheResponse:Lc8/cTe;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V
    .locals 0
    .param p1, "x0"    # Lc8/VSe;
    .param p2, "x1"    # Lc8/cTe;
    .param p3, "x2"    # Lc8/xUe;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;)V

    return-void
.end method

.method public static isCacheable(Lc8/cTe;Lc8/VSe;)Z
    .locals 3
    .param p0, "response"    # Lc8/cTe;
    .param p1, "request"    # Lc8/VSe;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lc8/cTe;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 71
    :sswitch_0
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lc8/VSe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
