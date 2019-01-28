.class public Lc8/tdo;
.super Ljava/lang/Object;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/udo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleInfo"
.end annotation


# instance fields
.field private color:I

.field private radius:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lc8/tdo;->color:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lc8/tdo;->radius:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lc8/tdo;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lc8/tdo;->y:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 638
    iput p1, p0, Lc8/tdo;->color:I

    .line 639
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 630
    iput p1, p0, Lc8/tdo;->radius:F

    .line 631
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 614
    iput p1, p0, Lc8/tdo;->x:F

    .line 615
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 622
    iput p1, p0, Lc8/tdo;->y:F

    .line 623
    return-void
.end method
