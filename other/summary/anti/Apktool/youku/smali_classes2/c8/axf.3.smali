.class public Lc8/axf;
.super Ljava/lang/Object;
.source "DecodedImage.java"

# interfaces
.implements Lc8/iyf;


# static fields
.field public static final ANIMATE_IMAGE:I = 0x2

.field public static final STATIC_BITMAP:I = 0x1


# instance fields
.field private final mAnimatedImage:Lc8/ruf;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapPadding:Landroid/graphics/Rect;

.field private mEncodedImage:Lc8/cxf;

.field private final mType:I


# direct methods
.method public constructor <init>(Lc8/cxf;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "encodedImage"    # Lc8/cxf;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v0}, Lc8/axf;-><init>(Lc8/cxf;Landroid/graphics/Bitmap;Lc8/ruf;Landroid/graphics/Rect;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lc8/cxf;Landroid/graphics/Bitmap;Lc8/ruf;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "encodedImage"    # Lc8/cxf;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "animatedImage"    # Lc8/ruf;
    .param p4, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-eqz p2, :cond_0

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lc8/axf;->mType:I

    .line 29
    :goto_0
    iput-object p1, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    .line 30
    iput-object p2, p0, Lc8/axf;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p3, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    .line 32
    iput-object p4, p0, Lc8/axf;->mBitmapPadding:Landroid/graphics/Rect;

    .line 33
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lc8/axf;->mType:I

    goto :goto_0
.end method


# virtual methods
.method public getAnimatedImage()Lc8/ruf;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/axf;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc8/axf;->mBitmapPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEncodedImage()Lc8/cxf;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lc8/axf;->mType:I

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 64
    iget v1, p0, Lc8/axf;->mType:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lc8/axf;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lc8/axf;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticBitmap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    iget v1, p0, Lc8/axf;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needCached()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    iget-boolean v0, v0, Lc8/cxf;->completed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/axf;->mEncodedImage:Lc8/cxf;

    invoke-virtual {v0}, Lc8/cxf;->release()V

    .line 72
    :cond_0
    iget-object v0, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v0}, Lc8/ruf;->dispose()V

    .line 75
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecodedImage(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/axf;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/axf;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", animated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/axf;->mAnimatedImage:Lc8/ruf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
