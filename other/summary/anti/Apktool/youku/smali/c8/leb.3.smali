.class public Lc8/leb;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lc8/veb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/veb",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lc8/Rdb;

.field private final animatableYDimension:Lc8/Rdb;


# direct methods
.method constructor <init>(Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "animatableXDimension"    # Lc8/Rdb;
    .param p2, "animatableYDimension"    # Lc8/Rdb;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lc8/leb;->animatableXDimension:Lc8/Rdb;

    .line 16
    iput-object p2, p0, Lc8/leb;->animatableYDimension:Lc8/Rdb;

    .line 17
    return-void
.end method


# virtual methods
.method public createAnimation()Lc8/cdb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/cdb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lc8/qdb;

    iget-object v1, p0, Lc8/leb;->animatableXDimension:Lc8/Rdb;

    .line 21
    invoke-virtual {v1}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v1

    iget-object v2, p0, Lc8/leb;->animatableYDimension:Lc8/Rdb;

    invoke-virtual {v2}, Lc8/Rdb;->createAnimation()Lc8/cdb;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc8/qdb;-><init>(Lc8/cdb;Lc8/cdb;)V

    .line 20
    return-object v0
.end method

.method public hasAnimation()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lc8/leb;->animatableXDimension:Lc8/Rdb;

    invoke-virtual {v0}, Lc8/Rdb;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/leb;->animatableYDimension:Lc8/Rdb;

    invoke-virtual {v0}, Lc8/Rdb;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
