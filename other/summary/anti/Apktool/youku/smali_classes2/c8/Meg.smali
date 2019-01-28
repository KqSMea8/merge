.class public Lc8/Meg;
.super Ljava/lang/Object;
.source "BorderUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchFromSparseArray(Landroid/util/SparseIntArray;II)I
    .locals 1
    .param p0, "array"    # Landroid/util/SparseIntArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "fallback"    # I

    .prologue
    .line 37
    if-nez p0, :cond_0

    .end local p2    # "fallback":I
    :goto_0
    return p2

    .restart local p2    # "fallback":I
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    goto :goto_0
.end method

.method static fetchFromSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "fallback":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .end local p2    # "fallback":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .restart local p2    # "fallback":Ljava/lang/Object;, "TT;"
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method static updateSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .locals 1
    .param p0    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;ITT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/Meg;->updateSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;Z)V

    .line 43
    return-void
.end method

.method static updateSparseArray(Landroid/util/SparseArray;ILjava/lang/Object;Z)V
    .locals 5
    .param p0    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p3, "borderRadius"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;ITT;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 59
    if-eqz p3, :cond_1

    .line 60
    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {p0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {p0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    if-ne p1, v0, :cond_2

    .line 71
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    invoke-virtual {p0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {p0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static updateSparseArray(Landroid/util/SparseIntArray;II)V
    .locals 1
    .param p0, "array"    # Landroid/util/SparseIntArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v0, 0x8

    .line 46
    if-ne p1, v0, :cond_0

    .line 47
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
