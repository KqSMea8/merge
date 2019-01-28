.class public final Lc8/Lt;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lc8/Nt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/Nt;Lc8/Nt;)I
    .locals 6
    .param p1, "lhs"    # Lc8/Nt;
    .param p2, "rhs"    # Lc8/Nt;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    iget-object v2, p1, Lc8/Nt;->view:Lc8/Rv;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p2, Lc8/Nt;->view:Lc8/Rv;

    if-nez v5, :cond_2

    move v5, v3

    :goto_1
    if-eq v2, v5, :cond_4

    .line 192
    iget-object v2, p1, Lc8/Nt;->view:Lc8/Rv;

    if-nez v2, :cond_3

    .line 208
    :cond_0
    :goto_2
    return v3

    :cond_1
    move v2, v4

    .line 191
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v3, v1

    .line 192
    goto :goto_2

    .line 196
    :cond_4
    iget-boolean v2, p1, Lc8/Nt;->immediate:Z

    iget-boolean v5, p2, Lc8/Nt;->immediate:Z

    if-eq v2, v5, :cond_5

    .line 197
    iget-boolean v2, p1, Lc8/Nt;->immediate:Z

    if-eqz v2, :cond_0

    move v3, v1

    goto :goto_2

    .line 201
    :cond_5
    iget v2, p2, Lc8/Nt;->viewVelocity:I

    iget v3, p1, Lc8/Nt;->viewVelocity:I

    sub-int v1, v2, v3

    .line 202
    .local v1, "deltaViewVelocity":I
    if-eqz v1, :cond_6

    move v3, v1

    goto :goto_2

    .line 205
    :cond_6
    iget v2, p1, Lc8/Nt;->distanceToItem:I

    iget v3, p2, Lc8/Nt;->distanceToItem:I

    sub-int v0, v2, v3

    .line 206
    .local v0, "deltaDistanceToItem":I
    if-eqz v0, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    move v3, v4

    .line 208
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    check-cast p1, Lc8/Nt;

    check-cast p2, Lc8/Nt;

    invoke-virtual {p0, p1, p2}, Lc8/Lt;->compare(Lc8/Nt;Lc8/Nt;)I

    move-result v0

    return v0
.end method
