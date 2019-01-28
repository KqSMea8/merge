.class public Lc8/OXb;
.super Landroid/view/View;
.source "MirrorLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/MXb;,
        Lc8/NXb;
    }
.end annotation


# instance fields
.field private final mHitRect:Landroid/graphics/Rect;

.field private final mLocation:[I

.field private mNeedUpdateCache:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRealTime:Z

.field private mSandoContainer:Lc8/RXb;

.field private final mSourceViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/NXb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/OXb;->mLocation:[I

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mPaint:Landroid/graphics/Paint;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OXb;->mNeedUpdateCache:Z

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mHitRect:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/OXb;->mLocation:[I

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mPaint:Landroid/graphics/Paint;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OXb;->mNeedUpdateCache:Z

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mHitRect:Landroid/graphics/Rect;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/OXb;->mLocation:[I

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mPaint:Landroid/graphics/Paint;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/OXb;->mNeedUpdateCache:Z

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/OXb;->mHitRect:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method private findSourceViewInfoByView(Landroid/view/View;)Lc8/NXb;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v2, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NXb;

    .line 78
    .local v1, "info":Lc8/NXb;
    invoke-static {v1}, Lc8/NXb;->access$000(Lc8/NXb;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 80
    .end local v1    # "info":Lc8/NXb;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSourceViewsDirty()Z
    .locals 6

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "dirty":Z
    iget-object v4, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/NXb;

    .line 125
    .local v2, "info":Lc8/NXb;
    invoke-static {v2}, Lc8/NXb;->access$000(Lc8/NXb;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 126
    .local v3, "source":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iget v5, v2, Lc8/NXb;->alpha:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 131
    const/4 v0, 0x1

    .line 142
    .end local v2    # "info":Lc8/NXb;
    .end local v3    # "source":Landroid/view/View;
    :cond_1
    :goto_0
    return v0

    .line 134
    .restart local v2    # "info":Lc8/NXb;
    .restart local v3    # "source":Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {v2}, Lc8/NXb;->access$300(Lc8/NXb;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs addMirrorView(Z[Landroid/view/View;)V
    .locals 8
    .param p1, "realTime"    # Z
    .param p2, "sourceViews"    # [Landroid/view/View;

    .prologue
    .line 89
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, p2

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 90
    .local v3, "source":Landroid/view/View;
    invoke-direct {p0, v3}, Lc8/OXb;->findSourceViewInfoByView(Landroid/view/View;)Lc8/NXb;

    move-result-object v4

    .line 91
    .local v4, "sourceViewInfo":Lc8/NXb;
    if-nez v4, :cond_0

    .line 92
    iget-object v5, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    new-instance v6, Lc8/NXb;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Lc8/NXb;-><init>(Landroid/view/View;Lc8/MXb;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v5, p0, Lc8/OXb;->mSandoContainer:Lc8/RXb;

    invoke-virtual {v5}, Lc8/RXb;->startPreDrawListenerIfNeed()V

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v4}, Lc8/NXb;->access$208(Lc8/NXb;)I

    goto :goto_1

    .line 99
    .end local v3    # "source":Landroid/view/View;
    .end local v4    # "sourceViewInfo":Lc8/NXb;
    :cond_1
    iget-boolean v5, p0, Lc8/OXb;->mRealTime:Z

    or-int/2addr v5, p1

    iput-boolean v5, p0, Lc8/OXb;->mRealTime:Z

    .line 100
    invoke-virtual {p0}, Lc8/OXb;->invalidate()V

    .line 101
    return-void
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lc8/OXb;->mNeedUpdateCache:Z

    if-nez v0, :cond_0

    .line 150
    invoke-super {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lc8/OXb;->destroyDrawingCache()V

    .line 152
    invoke-virtual {p0}, Lc8/OXb;->buildDrawingCache()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/OXb;->mNeedUpdateCache:Z

    .line 154
    invoke-super {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public hitMirrorView(FF)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Lc8/OXb;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 162
    :cond_1
    iget-object v4, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    iget-object v4, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NXb;

    .line 165
    .local v1, "info":Lc8/NXb;
    invoke-static {v1}, Lc8/NXb;->access$000(Lc8/NXb;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 166
    .local v2, "source":Landroid/view/View;
    iget-object v4, p0, Lc8/OXb;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 167
    iget-object v4, p0, Lc8/OXb;->mHitRect:Landroid/graphics/Rect;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 176
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 177
    iget-object v7, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 178
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 179
    iget-object v7, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/NXb;

    .line 180
    .local v3, "info":Lc8/NXb;
    invoke-static {v3}, Lc8/NXb;->access$000(Lc8/NXb;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 181
    .local v6, "source":Landroid/view/View;
    if-nez v6, :cond_0

    .line 182
    iget-object v7, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->destroyDrawingCache()V

    .line 186
    invoke-virtual {v6}, Landroid/view/View;->buildDrawingCache()V

    .line 187
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lc8/OXb;->mLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 189
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v3, Lc8/NXb;->alpha:F

    .line 190
    iget-object v7, p0, Lc8/OXb;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    iget v9, v3, Lc8/NXb;->alpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 192
    .local v4, "myLocation":[I
    invoke-virtual {p0, v4}, Lc8/OXb;->getLocationOnScreen([I)V

    .line 193
    iget-object v7, p0, Lc8/OXb;->mLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v8, 0x0

    aget v8, v4, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lc8/OXb;->mLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x1

    aget v9, v4, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lc8/OXb;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    const/4 v7, 0x1

    iput-boolean v7, p0, Lc8/OXb;->mNeedUpdateCache:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 200
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "info":Lc8/NXb;
    .end local v4    # "myLocation":[I
    .end local v5    # "size":I
    .end local v6    # "source":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "MirrorLayer.onDraw.error"

    invoke-static {v7, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public varargs removeMirrorView([Landroid/view/View;)V
    .locals 6
    .param p1, "sourceViews"    # [Landroid/view/View;

    .prologue
    .line 104
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 105
    .local v3, "source":Landroid/view/View;
    invoke-direct {p0, v3}, Lc8/OXb;->findSourceViewInfoByView(Landroid/view/View;)Lc8/NXb;

    move-result-object v4

    .line 106
    .local v4, "sourceViewInfo":Lc8/NXb;
    if-eqz v4, :cond_0

    .line 107
    invoke-static {v4}, Lc8/NXb;->access$210(Lc8/NXb;)I

    .line 108
    invoke-static {v4}, Lc8/NXb;->access$200(Lc8/NXb;)I

    move-result v5

    if-gtz v5, :cond_0

    .line 109
    iget-object v5, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "source":Landroid/view/View;
    .end local v4    # "sourceViewInfo":Lc8/NXb;
    :cond_1
    invoke-virtual {p0}, Lc8/OXb;->invalidate()V

    .line 114
    return-void
.end method

.method setSandoContainer(Lc8/RXb;)V
    .locals 0
    .param p1, "sandoContainer"    # Lc8/RXb;

    .prologue
    .line 69
    iput-object p1, p0, Lc8/OXb;->mSandoContainer:Lc8/RXb;

    .line 70
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lc8/OXb;->mSourceViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateMirrorViewsIfNeed()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lc8/OXb;->isSourceViewsDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/OXb;->mRealTime:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lc8/OXb;->invalidate()V

    goto :goto_0
.end method
