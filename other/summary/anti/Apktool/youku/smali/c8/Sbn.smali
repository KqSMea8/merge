.class public Lc8/Sbn;
.super Ljava/lang/Object;
.source "InternalUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keys2values(Landroid/support/v4/util/ArrayMap;[Ljava/lang/String;)[I
    .locals 5
    .param p1, "mPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")[I"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "check":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    array-length v4, p1

    new-array v3, v4, [I

    .line 16
    .local v3, "res":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 17
    aget-object v1, p1, v0

    .line 18
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 19
    .local v2, "r":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 16
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    const/16 v4, 0x64

    aput v4, v3, v0

    goto :goto_1

    .line 25
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "r":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [I

    return-object v4
.end method
