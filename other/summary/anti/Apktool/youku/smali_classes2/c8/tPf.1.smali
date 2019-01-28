.class public Lc8/tPf;
.super Landroid/widget/ScrollView;
.source "TScrollView.java"

# interfaces
.implements Lc8/wPf;
.implements Lc8/xPf;
.implements Lc8/zPf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lc8/wPf;",
        "Lc8/xPf;",
        "Lc8/zPf",
        "<",
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList",
            "<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHierarchyChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup$OnHierarchyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/tPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/tPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tPf;->mOnHierarchyChangeListeners:Ljava/util/List;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tPf;->mScrollable:Z

    .line 45
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lc8/sPf;

    invoke-direct {v0, p0}, Lc8/sPf;-><init>(Lc8/tPf;)V

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lc8/tPf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/tPf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/tPf;->mOnHierarchyChangeListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addFeature(Lc8/SOf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ScrollView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    .line 423
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 334
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 335
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 336
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 337
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 339
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0}, Lc8/POf;->beforeComputeScroll()V

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 343
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 344
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 345
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 347
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0}, Lc8/POf;->afterComputeScroll()V

    .line 343
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 350
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 158
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 159
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 160
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 162
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 167
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 168
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 170
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 166
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 173
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 234
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 235
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 236
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 238
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 234
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 243
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 244
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 245
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 247
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 243
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 250
    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 133
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 134
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 135
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 136
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 138
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 143
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 144
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 145
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 147
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDraw(Landroid/graphics/Canvas;)V

    .line 143
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 151
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
    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

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
            "Landroid/widget/ScrollView;",
            ">;>;)",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;>;"
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

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
    .line 428
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 429
    return-void
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lc8/tPf;->mScrollable:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;III)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "reserve"    # I

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->measureChild(Landroid/view/View;II)V

    .line 308
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 180
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 181
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 182
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 184
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeOnDraw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 191
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 192
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 194
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterOnDraw(Landroid/graphics/Canvas;)V

    .line 190
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 197
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 257
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 258
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 259
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 260
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 262
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 267
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 268
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 269
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 271
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 267
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 274
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 318
    .local v2, "ret":Z
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 319
    .local v3, "size":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 321
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 322
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v4, v0, Lc8/LOf;

    if-eqz v4, :cond_0

    .line 324
    check-cast v0, Lc8/LOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/LOf;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 319
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
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
    .line 110
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v8

    .line 111
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 112
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 113
    .local v6, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 115
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->beforeOnLayout(ZIIII)V

    .line 111
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 118
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 120
    add-int/lit8 v7, v8, -0x1

    :goto_1
    if-ltz v7, :cond_3

    .line 121
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 122
    .restart local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 124
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->afterOnLayout(ZIIII)V

    .line 120
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 127
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 88
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 89
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 90
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_0

    .line 92
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->beforeOnMeasure(II)V

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 97
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 98
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 99
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_2

    .line 101
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->afterOnMeasure(II)V

    .line 97
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 104
    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 355
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 356
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 357
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 358
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 360
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2, p3, p4}, Lc8/POf;->beforeOnScrollChanged(IIII)V

    .line 356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 365
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 366
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 367
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 369
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1, p2, p3, p4}, Lc8/POf;->afterOnScrollChanged(IIII)V

    .line 365
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 372
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouchEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 205
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 206
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 207
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 209
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x0

    .line 215
    .local v2, "result":Z
    iget-boolean v4, p0, Lc8/tPf;->mScrollable:Z

    if-eqz v4, :cond_2

    .line 216
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 219
    :cond_2
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 220
    iget-object v4, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 221
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_3

    .line 223
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 219
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 226
    :cond_4
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 280
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 282
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 283
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 285
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->beforeOnWindowFocusChanged(Z)V

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onWindowFocusChanged(Z)V

    .line 290
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 291
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 292
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 294
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->afterOnWindowFocusChanged(Z)V

    .line 290
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 297
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
            "Landroid/widget/ScrollView;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;>;"
    iget-object v0, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 4
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 376
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    if-nez v3, :cond_1

    .line 378
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 399
    :cond_0
    return-void

    .line 382
    :cond_1
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 383
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 384
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 385
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/QOf;

    if-eqz v3, :cond_2

    .line 387
    check-cast v0, Lc8/QOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/QOf;->beforeSetClipToPadding(Z)V

    .line 383
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 392
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 393
    iget-object v3, p0, Lc8/tPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 394
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    instance-of v3, v0, Lc8/QOf;

    if-eqz v3, :cond_4

    .line 396
    check-cast v0, Lc8/QOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/ScrollView;>;"
    invoke-interface {v0, p1}, Lc8/QOf;->afterSetClipToPadding(Z)V

    .line 392
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public setMeasuredDimension(JJ)V
    .locals 3
    .param p1, "width"    # J
    .param p3, "height"    # J

    .prologue
    .line 302
    long-to-int v0, p1

    long-to-int v1, p3

    invoke-super {p0, v0, v1}, Landroid/widget/ScrollView;->setMeasuredDimension(II)V

    .line 303
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/tPf;->mOnHierarchyChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lc8/tPf;->mScrollable:Z

    .line 433
    return-void
.end method
