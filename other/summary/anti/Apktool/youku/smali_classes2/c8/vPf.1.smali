.class public Lc8/vPf;
.super Landroid/view/View;
.source "TView.java"

# interfaces
.implements Lc8/xPf;
.implements Lc8/zPf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lc8/xPf;",
        "Lc8/zPf",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/vPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 30
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
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
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    .line 272
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 242
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 243
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 244
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 245
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 246
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0}, Lc8/POf;->beforeComputeScroll()V

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 250
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 251
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 252
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 253
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0}, Lc8/POf;->afterComputeScroll()V

    .line 250
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 256
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 110
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 111
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 112
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 113
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 114
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 119
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 120
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 121
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 124
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 172
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 173
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 174
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 175
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 180
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 181
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 182
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 183
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 180
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 186
    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 90
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 91
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 92
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 93
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 98
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 99
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 100
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 101
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDraw(Landroid/graphics/Canvas;)V

    .line 98
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 105
    :cond_3
    return-void
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
            "Landroid/view/View;",
            ">;>;)",
            "Lc8/SOf",
            "<-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;>;"
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

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
    .line 276
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 130
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 132
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 133
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeOnDraw(Landroid/graphics/Canvas;)V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 140
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 141
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 142
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterOnDraw(Landroid/graphics/Canvas;)V

    .line 139
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 145
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 198
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 199
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 200
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 201
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 202
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 208
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 209
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 210
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/ROf;

    if-eqz v3, :cond_2

    .line 211
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 208
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 215
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v8

    .line 68
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 69
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 70
    .local v6, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 71
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->beforeOnLayout(ZIIII)V

    .line 68
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 77
    add-int/lit8 v7, v8, -0x1

    :goto_1
    if-ltz v7, :cond_3

    .line 78
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 79
    .restart local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 80
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->afterOnLayout(ZIIII)V

    .line 77
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 84
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 45
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 46
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 47
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_0

    .line 48
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->beforeOnMeasure(II)V

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 54
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 55
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 56
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_2

    .line 57
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->afterOnMeasure(II)V

    .line 54
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 61
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 151
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 152
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 153
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 154
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 151
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 159
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 160
    iget-object v4, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 161
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 162
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 159
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 165
    :cond_3
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 220
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 221
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 222
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 223
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 224
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->beforeOnWindowFocusChanged(Z)V

    .line 221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 230
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 231
    iget-object v3, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 232
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 233
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->afterOnWindowFocusChanged(Z)V

    .line 230
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 237
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
            "Landroid/view/View;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/view/View;>;>;"
    iget-object v0, p0, Lc8/vPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(JJ)V
    .locals 3
    .param p1, "width"    # J
    .param p3, "height"    # J

    .prologue
    .line 191
    long-to-int v0, p1

    long-to-int v1, p3

    invoke-super {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 192
    return-void
.end method
