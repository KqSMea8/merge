.class public Lc8/cVb;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 8
    const/4 v0, 0x0

    .line 9
    .local v0, "h":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 11
    .local v2, "val":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 12
    mul-int/lit8 v3, v0, 0x1f

    aget-char v4, v2, v1

    add-int v0, v3, v4

    .line 11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_0
    return v0
.end method
