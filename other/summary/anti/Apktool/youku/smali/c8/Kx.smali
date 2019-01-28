.class public abstract Lc8/Kx;
.super Lc8/Gx;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .prologue
    .line 2199
    invoke-direct {p0}, Lc8/Gx;-><init>()V

    .line 2200
    iput p2, p0, Lc8/Kx;->mDefaultSwipeDirs:I

    .line 2201
    iput p1, p0, Lc8/Kx;->mDefaultDragDirs:I

    .line 2202
    return-void
.end method


# virtual methods
.method public getDragDirs(Lc8/Rv;Lc8/Qv;)I
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 2247
    iget v0, p0, Lc8/Kx;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Lc8/Rv;Lc8/Qv;)I
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 2252
    invoke-virtual {p0, p1, p2}, Lc8/Kx;->getDragDirs(Lc8/Rv;Lc8/Qv;)I

    move-result v0

    .line 2253
    invoke-virtual {p0, p1, p2}, Lc8/Kx;->getSwipeDirs(Lc8/Rv;Lc8/Qv;)I

    move-result v1

    .line 2252
    invoke-static {v0, v1}, Lc8/Kx;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Lc8/Rv;Lc8/Qv;)I
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 2234
    iget v0, p0, Lc8/Kx;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 0
    .param p1, "defaultDragDirs"    # I

    .prologue
    .line 2221
    iput p1, p0, Lc8/Kx;->mDefaultDragDirs:I

    .line 2222
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0
    .param p1, "defaultSwipeDirs"    # I

    .prologue
    .line 2211
    iput p1, p0, Lc8/Kx;->mDefaultSwipeDirs:I

    .line 2212
    return-void
.end method
