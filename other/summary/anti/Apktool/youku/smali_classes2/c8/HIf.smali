.class public Lc8/HIf;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/String;)J
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    if-nez p0, :cond_1

    const-wide/16 v2, 0x0

    .line 31
    :cond_0
    return-wide v2

    .line 24
    :cond_1
    const-wide/16 v2, 0x0

    .line 25
    .local v2, "h":J
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 26
    .local v1, "value":[C
    array-length v4, v1

    if-lez v4, :cond_0

    .line 27
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v0, v1, v4

    .line 28
    .local v0, "aValue":C
    const-wide/16 v6, 0x1f

    mul-long/2addr v6, v2

    int-to-long v8, v0

    add-long v2, v6, v8

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static invokeCallback(ILjava/util/Map;Lc8/QJf;)Z
    .locals 1
    .param p0, "code"    # I
    .param p2, "callback"    # Lc8/QJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/QJf;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-interface {p2, p0, p1}, Lc8/QJf;->onResult(ILjava/util/Map;)V

    .line 18
    const/4 v0, 0x1

    goto :goto_0
.end method
