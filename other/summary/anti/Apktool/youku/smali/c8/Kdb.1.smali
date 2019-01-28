.class public Lc8/Kdb;
.super Ljava/lang/Object;
.source "ScaleXY.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jdb;
    }
.end annotation


# instance fields
.field private final scaleX:F

.field private final scaleY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-direct {p0, v0, v0}, Lc8/Kdb;-><init>(FF)V

    .line 18
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lc8/Kdb;->scaleX:F

    .line 13
    iput p2, p0, Lc8/Kdb;->scaleY:F

    .line 14
    return-void
.end method


# virtual methods
.method public getScaleX()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lc8/Kdb;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lc8/Kdb;->scaleY:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/Kdb;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/Kdb;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
