.class public Lc8/kWc;
.super Lc8/lWc;
.source "ImageResizer.java"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lc8/lWc;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lc8/lWc;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0, p2}, Lc8/kWc;->setImageSize(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/lWc;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2, p3}, Lc8/kWc;->setImageSize(II)V

    .line 51
    return-void
.end method


# virtual methods
.method public setImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1, p1}, Lc8/kWc;->setImageSize(II)V

    .line 87
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 76
    iput p1, p0, Lc8/kWc;->mImageWidth:I

    .line 77
    iput p2, p0, Lc8/kWc;->mImageHeight:I

    .line 78
    return-void
.end method
