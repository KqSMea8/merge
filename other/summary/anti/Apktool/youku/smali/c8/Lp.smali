.class public final Lc8/Lp;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sp;
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
        "Lc8/Rp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lc8/Rp;Lc8/Rp;)I
    .locals 3
    .param p1, "o1"    # Lc8/Rp;
    .param p2, "o2"    # Lc8/Rp;

    .prologue
    .line 75
    iget v1, p1, Lc8/Rp;->x:I

    iget v2, p2, Lc8/Rp;->x:I

    sub-int v0, v1, v2

    .line 76
    .local v0, "cmpX":I
    if-nez v0, :cond_0

    iget v1, p1, Lc8/Rp;->y:I

    iget v2, p2, Lc8/Rp;->y:I

    sub-int v0, v1, v2

    .end local v0    # "cmpX":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lc8/Rp;

    check-cast p2, Lc8/Rp;

    invoke-virtual {p0, p1, p2}, Lc8/Lp;->compare(Lc8/Rp;Lc8/Rp;)I

    move-result v0

    return v0
.end method
