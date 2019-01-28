.class public Lc8/gPf;
.super Landroid/widget/ListView;
.source "TListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lc8/wPf;
.implements Lc8/xPf;
.implements Lc8/zPf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ListView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lc8/wPf;",
        "Lc8/xPf;",
        "Lc8/zPf",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private unScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/gPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/gPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/gPf;->unScroll:Z

    .line 46
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/gPf;->setOverScrollMode(I)V

    .line 50
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method public addFeature(Lc8/SOf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ListView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    .line 390
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 350
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 351
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 352
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 353
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 355
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0}, Lc8/POf;->beforeComputeScroll()V

    .line 351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 359
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 360
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 361
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 363
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0}, Lc8/POf;->afterComputeScroll()V

    .line 359
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 366
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 180
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 181
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 182
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 184
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 188
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 189
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 190
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 192
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 188
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 195
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 250
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 251
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 252
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 254
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 259
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 260
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 261
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 263
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 259
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 266
    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 156
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 157
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 158
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 160
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 165
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 166
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 167
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 169
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDraw(Landroid/graphics/Canvas;)V

    .line 165
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 173
    :cond_3
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;JI)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J
    .param p5, "reserve"    # I

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public findFeature(Ljava/lang/Class;)Lc8/SOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ListView;",
            ">;>;)",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;>;"
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->findFeature(Ljava/lang/Class;)Lc8/SOf;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    return-void
.end method

.method public isUnScroll()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lc8/gPf;->unScroll:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;III)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "reserve"    # I

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->measureChild(Landroid/view/View;II)V

    .line 324
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 202
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 203
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 204
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 206
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeOnDraw(Landroid/graphics/Canvas;)V

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 213
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 214
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 216
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterOnDraw(Landroid/graphics/Canvas;)V

    .line 212
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 219
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 273
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 274
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 275
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 276
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 278
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 283
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 284
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 285
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 287
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 283
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 290
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 334
    .local v2, "ret":Z
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 335
    .local v3, "size":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 337
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 338
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v0, Lc8/LOf;

    if-eqz v4, :cond_0

    .line 340
    check-cast v0, Lc8/LOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/LOf;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 335
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 343
    :cond_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v8

    .line 133
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 134
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 135
    .local v6, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 137
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->beforeOnLayout(ZIIII)V

    .line 133
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 142
    add-int/lit8 v7, v8, -0x1

    :goto_1
    if-ltz v7, :cond_3

    .line 143
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 144
    .restart local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 146
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->afterOnLayout(ZIIII)V

    .line 142
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 149
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    iget-boolean v4, p0, Lc8/gPf;->unScroll:Z

    if-eqz v4, :cond_1

    .line 102
    const v4, 0x1fffffff

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 103
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 126
    .end local v0    # "expandSpec":I
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 109
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 110
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v2}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/SOf;

    .line 111
    .local v1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v1, Lc8/NOf;

    if-eqz v4, :cond_2

    .line 113
    check-cast v1, Lc8/NOf;

    .end local v1    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v1, p1, p2}, Lc8/NOf;->beforeOnMeasure(II)V

    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 118
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 119
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v2}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/SOf;

    .line 120
    .restart local v1    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v1, Lc8/NOf;

    if-eqz v4, :cond_4

    .line 122
    check-cast v1, Lc8/NOf;

    .end local v1    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v1, p1, p2}, Lc8/NOf;->afterOnMeasure(II)V

    .line 118
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 82
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 91
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 92
    iget-object v2, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 226
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 227
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 228
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 230
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 235
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 236
    iget-object v4, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 237
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 239
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 235
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 242
    :cond_3
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 296
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 297
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 298
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 299
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 301
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->beforeOnWindowFocusChanged(Z)V

    .line 297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 306
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 307
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 308
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 310
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->afterOnWindowFocusChanged(Z)V

    .line 306
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 313
    :cond_3
    return-void
.end method

.method public removeFeature(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ListView;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;>;"
    iget-object v0, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 34
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lc8/gPf;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 402
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 403
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 404
    iget-object v3, p0, Lc8/gPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 405
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    instance-of v3, v0, Lc8/GOf;

    if-eqz v3, :cond_0

    .line 407
    check-cast v0, Lc8/GOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ListView;>;"
    invoke-interface {v0, p1}, Lc8/GOf;->wrapAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object p1

    .line 403
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    return-void
.end method

.method public setMeasuredDimension(JJ)V
    .locals 3
    .param p1, "width"    # J
    .param p3, "height"    # J

    .prologue
    .line 318
    long-to-int v0, p1

    long-to-int v1, p3

    invoke-super {p0, v0, v1}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 319
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/gPf;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 415
    const/4 v0, 0x2

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 416
    return-void
.end method

.method public setUnScroll(Z)V
    .locals 0
    .param p1, "unScroll"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lc8/gPf;->unScroll:Z

    .line 426
    return-void
.end method
