.class public Lc8/AOf;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableProxy.java"

# interfaces
.implements Lc8/cPf;


# instance fields
.field private mBindView:Lc8/DOf;

.field private mIsRecovering:Z

.field protected mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/AOf;->mIsRecovering:Z

    .line 44
    return-void
.end method

.method public static obtain(Landroid/graphics/drawable/BitmapDrawable;)Lc8/AOf;
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 38
    new-instance v0, Lc8/AOf;

    invoke-direct {v0, p0}, Lc8/AOf;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0
.end method

.method private tryDowngrade2Passable()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lc8/Zvf;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lc8/Zvf;

    invoke-virtual {v0}, Lc8/Zvf;->downgrade2Passable()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method bindHostView(Lc8/DOf;)Lc8/AOf;
    .locals 0
    .param p1, "view"    # Lc8/DOf;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/AOf;->mBindView:Lc8/DOf;

    .line 132
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-virtual {p0}, Lc8/AOf;->recover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "UIKitImage"

    const-string/jumbo v1, "recover on draw, width=%d, height=%d, id=%s, url=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lc8/AOf;->mBindView:Lc8/DOf;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lc8/AOf;->mBindView:Lc8/DOf;

    invoke-virtual {v4}, Lc8/DOf;->getLoadingUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/APf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lc8/AOf;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setChangingConfigurations(I)V

    .line 89
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lc8/AOf;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lc8/AOf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 95
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-direct {p0}, Lc8/AOf;->tryDowngrade2Passable()V

    .line 120
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getChangingConfigurations()I

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getMinimumHeight()I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getMinimumWidth()I

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getOpacity()I

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getRealDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "forTemporaryUsing"    # Z

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-direct {p0}, Lc8/AOf;->tryDowngrade2Passable()V

    .line 111
    :cond_0
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected isContentDifferent(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    instance-of v2, p1, Lc8/AOf;

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Lc8/AOf;

    .end local p1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p1, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v2, v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    .restart local p1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-ne p0, p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->isStateful()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method declared-synchronized recover()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/AOf;->mIsRecovering:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 53
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lc8/AOf;->mBindView:Lc8/DOf;

    if-eqz v1, :cond_1

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/AOf;->mIsRecovering:Z

    .line 56
    iget-object v1, p0, Lc8/AOf;->mBindView:Lc8/DOf;

    invoke-virtual {v1}, Lc8/DOf;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 73
    :goto_0
    monitor-exit p0

    return v0

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lc8/Zvf;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lc8/Zvf;

    invoke-virtual {v0}, Lc8/Zvf;->release()V

    .line 72
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 156
    invoke-virtual {p0}, Lc8/AOf;->invalidateSelf()V

    .line 158
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 170
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 164
    invoke-virtual {p0}, Lc8/AOf;->invalidateSelf()V

    .line 166
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 148
    invoke-virtual {p0}, Lc8/AOf;->invalidateSelf()V

    .line 150
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/AOf;->mRealDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 140
    invoke-virtual {p0}, Lc8/AOf;->invalidateSelf()V

    .line 142
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DrawableProxy@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
