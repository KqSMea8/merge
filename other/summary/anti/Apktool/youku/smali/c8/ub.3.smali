.class public Lc8/ub;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 46
    iget v0, p0, Lc8/ub;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lc8/ub;->x:I

    iget v1, p0, Lc8/ub;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lc8/ub;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lc8/ub;->y:I

    iget v1, p0, Lc8/ub;->height:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenterX()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lc8/ub;->x:I

    iget v1, p0, Lc8/ub;->width:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCenterY()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lc8/ub;->y:I

    iget v1, p0, Lc8/ub;->height:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method grow(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 34
    iget v0, p0, Lc8/ub;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc8/ub;->x:I

    .line 35
    iget v0, p0, Lc8/ub;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Lc8/ub;->y:I

    .line 36
    iget v0, p0, Lc8/ub;->width:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lc8/ub;->width:I

    .line 37
    iget v0, p0, Lc8/ub;->height:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lc8/ub;->height:I

    .line 38
    return-void
.end method

.method intersects(Lc8/ub;)Z
    .locals 3
    .param p1, "bounds"    # Lc8/ub;

    .prologue
    .line 41
    iget v0, p0, Lc8/ub;->x:I

    iget v1, p1, Lc8/ub;->x:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lc8/ub;->x:I

    iget v1, p1, Lc8/ub;->x:I

    iget v2, p1, Lc8/ub;->width:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lc8/ub;->y:I

    iget v1, p1, Lc8/ub;->y:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lc8/ub;->y:I

    iget v1, p1, Lc8/ub;->y:I

    iget v2, p1, Lc8/ub;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 28
    iput p1, p0, Lc8/ub;->x:I

    .line 29
    iput p2, p0, Lc8/ub;->y:I

    .line 30
    iput p3, p0, Lc8/ub;->width:I

    .line 31
    iput p4, p0, Lc8/ub;->height:I

    .line 32
    return-void
.end method
