.class public Lc8/aPf;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "ImageShapeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bPf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyShapeDrawable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 0
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 295
    return-void
.end method
