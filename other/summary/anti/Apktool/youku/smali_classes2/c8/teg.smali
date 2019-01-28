.class public Lc8/teg;
.super Landroid/widget/ImageView;
.source "WXImageView.java"

# interfaces
.implements Lc8/Jbg;
.implements Lc8/Ueg;
.implements Lc8/aeg;
.implements Lc8/beg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ImageView;",
        "Lc8/Jbg;",
        "Lc8/aeg",
        "<",
        "Lc8/Kbg;",
        ">;",
        "Lc8/beg",
        "<",
        "Lc8/Kbg;",
        ">;",
        "Lc8/Ueg;"
    }
.end annotation


# instance fields
.field private borderRadius:[F

.field private enableBitmapAutoManage:Z

.field private gif:Z

.field private isBitmapReleased:Z

.field private mOutWindowVisibilityChangedReally:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/Kbg;",
            ">;"
        }
    .end annotation
.end field

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v0, p0, Lc8/teg;->isBitmapReleased:Z

    .line 51
    iput-boolean v0, p0, Lc8/teg;->enableBitmapAutoManage:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected autoRecoverImage()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v1, p0, Lc8/teg;->enableBitmapAutoManage:Z

    if-eqz v1, :cond_1

    .line 244
    iget-boolean v1, p0, Lc8/teg;->isBitmapReleased:Z

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lc8/teg;->getComponent()Lc8/Kbg;

    move-result-object v0

    .line 246
    .local v0, "image":Lc8/Kbg;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lc8/Kbg;->autoRecoverImage()V

    .line 249
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/teg;->isBitmapReleased:Z

    .line 252
    .end local v0    # "image":Lc8/Kbg;
    :cond_1
    return-void
.end method

.method protected autoReleaseImage()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v1, p0, Lc8/teg;->enableBitmapAutoManage:Z

    if-eqz v1, :cond_0

    .line 232
    iget-boolean v1, p0, Lc8/teg;->isBitmapReleased:Z

    if-nez v1, :cond_0

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/teg;->isBitmapReleased:Z

    .line 234
    invoke-virtual {p0}, Lc8/teg;->getComponent()Lc8/Kbg;

    move-result-object v0

    .line 235
    .local v0, "image":Lc8/Kbg;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lc8/Kbg;->autoReleaseImage()V

    .line 240
    .end local v0    # "image":Lc8/Kbg;
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/teg;->mOutWindowVisibilityChangedReally:Z

    .line 180
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchWindowVisibilityChanged(I)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/teg;->mOutWindowVisibilityChangedReally:Z

    .line 182
    return-void
.end method

.method public getComponent()Lc8/Kbg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lc8/teg;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/teg;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Kbg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getComponent()Lc8/tbg;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lc8/teg;->getComponent()Lc8/Kbg;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lc8/teg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 159
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 160
    instance-of v2, v1, Lc8/Yfg;

    if-eqz v2, :cond_0

    .line 161
    check-cast v1, Lc8/Yfg;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lc8/Yfg;->getBitmapHeight()I

    move-result v2

    .line 173
    :goto_0
    return v2

    .line 162
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 163
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 167
    :cond_1
    const-string/jumbo v2, "WXImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bitmap on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 170
    :cond_3
    const-string/jumbo v2, "WXImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported drawable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNaturalWidth()I
    .locals 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lc8/teg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 140
    instance-of v2, v1, Lc8/Yfg;

    if-eqz v2, :cond_0

    .line 141
    check-cast v1, Lc8/Yfg;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lc8/Yfg;->getBitmapWidth()I

    move-result v2

    .line 153
    :goto_0
    return v2

    .line 142
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 143
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v2, "WXImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bitmap on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 150
    :cond_3
    const-string/jumbo v2, "WXImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not supported drawable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public holdComponent(Lc8/Kbg;)V
    .locals 1
    .param p1, "component"    # Lc8/Kbg;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/teg;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 128
    return-void
.end method

.method public bridge synthetic holdComponent(Lc8/tbg;)V
    .locals 0
    .param p1, "x0"    # Lc8/tbg;

    .prologue
    .line 42
    check-cast p1, Lc8/Kbg;

    .end local p1    # "x0":Lc8/tbg;
    invoke-virtual {p0, p1}, Lc8/teg;->holdComponent(Lc8/Kbg;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 200
    invoke-virtual {p0}, Lc8/teg;->autoRecoverImage()V

    .line 201
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 206
    invoke-virtual {p0}, Lc8/teg;->autoReleaseImage()V

    .line 208
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 222
    invoke-virtual {p0}, Lc8/teg;->autoRecoverImage()V

    .line 223
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lc8/teg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lc8/teg;->gif:Z

    invoke-virtual {p0, v0, v1}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 214
    invoke-virtual {p0}, Lc8/teg;->autoReleaseImage()V

    .line 216
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 107
    .local v0, "result":Z
    iget-object v1, p0, Lc8/teg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lc8/teg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 110
    :cond_0
    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 187
    iget-boolean v0, p0, Lc8/teg;->mOutWindowVisibilityChangedReally:Z

    if-eqz v0, :cond_0

    .line 188
    if-nez p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lc8/teg;->autoRecoverImage()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Lc8/teg;->autoReleaseImage()V

    goto :goto_0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 101
    iput-object p1, p0, Lc8/teg;->wxGesture:Lc8/Teg;

    .line 102
    return-void
.end method

.method public setBorderRadius([F)V
    .locals 0
    .param p1, "borderRadius"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    iput-object p1, p0, Lc8/teg;->borderRadius:[F

    .line 115
    return-void
.end method

.method protected setEnableBitmapAutoManage(Z)V
    .locals 0
    .param p1, "enableBitmapAutoManage"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lc8/teg;->enableBitmapAutoManage:Z

    .line 228
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lc8/teg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 92
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isGif"    # Z

    .prologue
    .line 65
    iput-boolean p2, p0, Lc8/teg;->gif:Z

    .line 67
    invoke-virtual {p0}, Lc8/teg;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_1

    .line 68
    invoke-virtual {p0}, Lc8/teg;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iget-object v2, p0, Lc8/teg;->borderRadius:[F

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lc8/teg;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lc8/teg;->getPaddingRight()I

    move-result v3

    sub-int v3, v0, v3

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lc8/teg;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lc8/teg;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lc8/Yfg;->createImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;[FIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 73
    .local v9, "wrapDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Lc8/Yfg;

    if-eqz v0, :cond_0

    move-object v7, v9

    .line 74
    check-cast v7, Lc8/Yfg;

    .line 75
    .local v7, "imageDrawable":Lc8/Yfg;
    invoke-virtual {v7}, Lc8/Yfg;->getCornerRadii()[F

    move-result-object v0

    iget-object v1, p0, Lc8/teg;->borderRadius:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/teg;->borderRadius:[F

    invoke-virtual {v7, v0}, Lc8/Yfg;->setCornerRadii([F)V

    .line 79
    .end local v7    # "imageDrawable":Lc8/Yfg;
    :cond_0
    invoke-super {p0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lc8/teg;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lc8/teg;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Kbg;

    .line 82
    .local v6, "component":Lc8/Kbg;
    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v6}, Lc8/Kbg;->readyToRender()V

    .line 87
    .end local v6    # "component":Lc8/Kbg;
    .end local v9    # "wrapDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lc8/teg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method
