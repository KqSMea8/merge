.class public Lc8/vx;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tx;,
        Lc8/ux;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lc8/Qv;",
            "Lc8/tx;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lc8/Qv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 49
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    .line 292
    return-void
.end method

.method private popFromLayoutStep(Lc8/Qv;I)Lc8/pv;
    .locals 5
    .param p1, "vh"    # Lc8/Qv;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :cond_1
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/tx;

    .line 108
    .local v2, "record":Lc8/tx;
    if-eqz v2, :cond_0

    iget v3, v2, Lc8/tx;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 109
    iget v3, v2, Lc8/tx;->flags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lc8/tx;->flags:I

    .line 111
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 112
    iget-object v1, v2, Lc8/tx;->preInfo:Lc8/pv;

    .line 119
    .local v1, "info":Lc8/pv;
    :goto_1
    iget v3, v2, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 121
    invoke-static {v2}, Lc8/tx;->recycle(Lc8/tx;)V

    goto :goto_0

    .line 113
    .end local v1    # "info":Lc8/pv;
    :cond_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    .line 114
    iget-object v1, v2, Lc8/tx;->postInfo:Lc8/pv;

    .restart local v1    # "info":Lc8/pv;
    goto :goto_1

    .line 116
    .end local v1    # "info":Lc8/pv;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must provide flag PRE or POST"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lc8/Qv;Lc8/pv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "info"    # Lc8/pv;

    .prologue
    .line 147
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 148
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Lc8/tx;->obtain()Lc8/tx;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    iget v1, v0, Lc8/tx;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lc8/tx;->flags:I

    .line 153
    iput-object p2, v0, Lc8/tx;->preInfo:Lc8/pv;

    .line 154
    return-void
.end method

.method addToDisappearedInLayout(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 200
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 201
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lc8/tx;->obtain()Lc8/tx;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iget v1, v0, Lc8/tx;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lc8/tx;->flags:I

    .line 206
    return-void
.end method

.method addToOldChangeHolders(JLc8/Qv;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "holder"    # Lc8/Qv;

    .prologue
    .line 134
    iget-object v0, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 135
    return-void
.end method

.method addToPostLayout(Lc8/Qv;Lc8/pv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "info"    # Lc8/pv;

    .prologue
    .line 184
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 185
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lc8/tx;->obtain()Lc8/tx;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    iput-object p2, v0, Lc8/tx;->postInfo:Lc8/pv;

    .line 190
    iget v1, v0, Lc8/tx;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lc8/tx;->flags:I

    .line 191
    return-void
.end method

.method addToPreLayout(Lc8/Qv;Lc8/pv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "info"    # Lc8/pv;

    .prologue
    .line 66
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 67
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lc8/tx;->obtain()Lc8/tx;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iput-object p2, v0, Lc8/tx;->preInfo:Lc8/pv;

    .line 72
    iget v1, v0, Lc8/tx;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lc8/tx;->flags:I

    .line 73
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 57
    iget-object v0, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 58
    return-void
.end method

.method getFromOldChangeHolders(J)Lc8/Qv;
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 175
    iget-object v0, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qv;

    return-object v0
.end method

.method isDisappearing(Lc8/Qv;)Z
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 76
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 77
    .local v0, "record":Lc8/tx;
    if-eqz v0, :cond_0

    iget v1, v0, Lc8/tx;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Lc8/Qv;)Z
    .locals 2
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 163
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 164
    .local v0, "record":Lc8/tx;
    if-eqz v0, :cond_0

    iget v1, v0, Lc8/tx;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 275
    invoke-static {}, Lc8/tx;->drainCache()V

    .line 276
    return-void
.end method

.method public onViewDetached(Lc8/Qv;)V
    .locals 0
    .param p1, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lc8/vx;->removeFromDisappearedInLayout(Lc8/Qv;)V

    .line 280
    return-void
.end method

.method popFromPostLayout(Lc8/Qv;)Lc8/pv;
    .locals 1
    .param p1, "vh"    # Lc8/Qv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lc8/vx;->popFromLayoutStep(Lc8/Qv;I)Lc8/pv;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Lc8/Qv;)Lc8/pv;
    .locals 1
    .param p1, "vh"    # Lc8/Qv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lc8/vx;->popFromLayoutStep(Lc8/Qv;I)Lc8/pv;

    move-result-object v0

    return-object v0
.end method

.method process(Lc8/ux;)V
    .locals 5
    .param p1, "callback"    # Lc8/ux;

    .prologue
    .line 221
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_7

    .line 222
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 223
    .local v2, "viewHolder":Lc8/Qv;
    iget-object v3, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/tx;

    .line 224
    .local v1, "record":Lc8/tx;
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 226
    invoke-interface {p1, v2}, Lc8/ux;->unused(Lc8/Qv;)V

    .line 253
    :goto_1
    invoke-static {v1}, Lc8/tx;->recycle(Lc8/tx;)V

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    :cond_0
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    if-nez v3, :cond_1

    .line 232
    invoke-interface {p1, v2}, Lc8/ux;->unused(Lc8/Qv;)V

    goto :goto_1

    .line 234
    :cond_1
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    iget-object v4, v1, Lc8/tx;->postInfo:Lc8/pv;

    invoke-interface {p1, v2, v3, v4}, Lc8/ux;->processDisappeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    goto :goto_1

    .line 236
    :cond_2
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 238
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    iget-object v4, v1, Lc8/tx;->postInfo:Lc8/pv;

    invoke-interface {p1, v2, v3, v4}, Lc8/ux;->processAppeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    goto :goto_1

    .line 239
    :cond_3
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 241
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    iget-object v4, v1, Lc8/tx;->postInfo:Lc8/pv;

    invoke-interface {p1, v2, v3, v4}, Lc8/ux;->processPersistent(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    goto :goto_1

    .line 242
    :cond_4
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 244
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lc8/ux;->processDisappeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    goto :goto_1

    .line 245
    :cond_5
    iget v3, v1, Lc8/tx;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 247
    iget-object v3, v1, Lc8/tx;->preInfo:Lc8/pv;

    iget-object v4, v1, Lc8/tx;->postInfo:Lc8/pv;

    invoke-interface {p1, v2, v3, v4}, Lc8/ux;->processAppeared(Lc8/Qv;Lc8/pv;Lc8/pv;)V

    goto :goto_1

    .line 248
    :cond_6
    iget v3, v1, Lc8/tx;->flags:I

    goto :goto_1

    .line 255
    .end local v1    # "record":Lc8/tx;
    .end local v2    # "viewHolder":Lc8/Qv;
    :cond_7
    return-void
.end method

.method removeFromDisappearedInLayout(Lc8/Qv;)V
    .locals 2
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 213
    iget-object v1, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 214
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v1, v0, Lc8/tx;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lc8/tx;->flags:I

    goto :goto_0
.end method

.method removeViewHolder(Lc8/Qv;)V
    .locals 3
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 262
    iget-object v2, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 263
    iget-object v2, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 264
    iget-object v2, p0, Lc8/vx;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 268
    :cond_0
    iget-object v2, p0, Lc8/vx;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/tx;

    .line 269
    .local v1, "info":Lc8/tx;
    if-eqz v1, :cond_1

    .line 270
    invoke-static {v1}, Lc8/tx;->recycle(Lc8/tx;)V

    .line 272
    :cond_1
    return-void

    .line 262
    .end local v1    # "info":Lc8/tx;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
