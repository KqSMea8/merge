.class public Lc8/vrb;
.super Landroid/support/v4/util/LongSparseArray;
.source "WXBlurEXModule.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedLongSparseArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/LongSparseArray",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final mFixedSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "fixedSize"    # I

    .prologue
    .line 194
    .local p0, "this":Lc8/vrb;, "Lcom/alibaba/aliweex/adapter/module/blur/WXBlurEXModule$FixedLongSparseArray<TE;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 195
    iput p1, p0, Lc8/vrb;->mFixedSize:I

    .line 196
    return-void
.end method

.method private trimToSizeIfNeeded()V
    .locals 8

    .prologue
    .line 211
    .local p0, "this":Lc8/vrb;, "Lcom/alibaba/aliweex/adapter/module/blur/WXBlurEXModule$FixedLongSparseArray<TE;>;"
    invoke-virtual {p0}, Lc8/vrb;->size()I

    move-result v3

    .line 212
    .local v3, "size":I
    iget v5, p0, Lc8/vrb;->mFixedSize:I

    sub-int v4, v3, v5

    .line 213
    .local v4, "sizeToEvict":I
    if-gtz v4, :cond_1

    .line 229
    :cond_0
    return-void

    .line 216
    :cond_1
    new-array v2, v4, [J

    .line 217
    .local v2, "keysToEvict":[J
    const/4 v1, 0x0

    .line 218
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 219
    if-ge v1, v4, :cond_2

    .line 222
    invoke-virtual {p0, v0}, Lc8/vrb;->keyAt(I)J

    move-result-wide v6

    aput-wide v6, v2, v1

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 227
    aget-wide v6, v2, v0

    invoke-virtual {p0, v6, v7}, Lc8/vrb;->remove(J)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lc8/vrb;, "Lcom/alibaba/aliweex/adapter/module/blur/WXBlurEXModule$FixedLongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 207
    invoke-direct {p0}, Lc8/vrb;->trimToSizeIfNeeded()V

    .line 208
    return-void
.end method

.method public put(JLjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lc8/vrb;, "Lcom/alibaba/aliweex/adapter/module/blur/WXBlurEXModule$FixedLongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 201
    invoke-direct {p0}, Lc8/vrb;->trimToSizeIfNeeded()V

    .line 202
    return-void
.end method
