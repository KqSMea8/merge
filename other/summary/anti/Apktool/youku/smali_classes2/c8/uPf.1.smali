.class public Lc8/uPf;
.super Landroid/widget/TextView;
.source "TTextView.java"

# interfaces
.implements Lc8/xPf;
.implements Lc8/zPf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/TextView;",
        "Lc8/xPf;",
        "Lc8/zPf",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFeatureList:Lcom/taobao/uikit/utils/FeatureList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/uikit/utils/FeatureList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/uPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 40
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/taobao/uikit/utils/FeatureList;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/utils/FeatureList;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    .line 35
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
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
            "Landroid/widget/TextView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lc8/SOf;)Z

    move-result v0

    return v0
.end method

.method public clearFeatures()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->clearFeatures()V

    .line 278
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 248
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 249
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 250
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 251
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_0

    .line 252
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0}, Lc8/POf;->beforeComputeScroll()V

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    .line 256
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 257
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 258
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/POf;

    if-eqz v3, :cond_2

    .line 259
    check-cast v0, Lc8/POf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0}, Lc8/POf;->afterComputeScroll()V

    .line 256
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 262
    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 117
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 118
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 119
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 120
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 125
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 126
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 127
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 130
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 177
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 178
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 179
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 180
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 181
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 186
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 187
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 188
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 189
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterDispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 186
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 192
    :cond_3
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 96
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 97
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 98
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 99
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 104
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 105
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 106
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 107
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterDraw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 111
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
            "Landroid/widget/TextView;",
            ">;>;)",
            "Lc8/SOf",
            "<-",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;>;"
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

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
    .line 282
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/uikit/utils/FeatureList;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 135
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 136
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 137
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 138
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_0

    .line 139
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->beforeOnDraw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 146
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 147
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/HOf;

    if-eqz v3, :cond_2

    .line 148
    check-cast v0, Lc8/HOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/HOf;->afterOnDraw(Landroid/graphics/Canvas;)V

    .line 145
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 151
    :cond_3
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 204
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 205
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 206
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 207
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 208
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->beforeOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 214
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 215
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 216
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/ROf;

    if-eqz v3, :cond_2

    .line 217
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1, p2, p3}, Lc8/IOf;->afterOnFocusChanged(ZILandroid/graphics/Rect;)V

    .line 214
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 221
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
    .line 73
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v8

    .line 74
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 75
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 76
    .local v6, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 77
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->beforeOnLayout(ZIIII)V

    .line 74
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 83
    add-int/lit8 v7, v8, -0x1

    :goto_1
    if-ltz v7, :cond_3

    .line 84
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, v7}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/SOf;

    .line 85
    .restart local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v0, v6, Lc8/MOf;

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 86
    check-cast v0, Lc8/MOf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/MOf;->afterOnLayout(ZIIII)V

    .line 83
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 90
    .end local v6    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 51
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 52
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 53
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_0

    .line 54
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->beforeOnMeasure(II)V

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 60
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 61
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 62
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/NOf;

    if-eqz v3, :cond_2

    .line 63
    check-cast v0, Lc8/NOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1, p2}, Lc8/NOf;->afterOnMeasure(II)V

    .line 60
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 67
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v3

    .line 157
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 158
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 159
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_0

    .line 160
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->beforeOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 165
    .local v2, "result":Z
    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 166
    iget-object v4, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v4, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 167
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v4, v0, Lc8/ROf;

    if-eqz v4, :cond_2

    .line 168
    check-cast v0, Lc8/ROf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/ROf;->afterOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 165
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 171
    :cond_3
    return v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 226
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v2

    .line 227
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 228
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 229
    .local v0, "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_0

    .line 230
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->beforeOnWindowFocusChanged(Z)V

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 236
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 237
    iget-object v3, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v3, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SOf;

    .line 238
    .restart local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    instance-of v3, v0, Lc8/IOf;

    if-eqz v3, :cond_2

    .line 239
    check-cast v0, Lc8/IOf;

    .end local v0    # "feature":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;"
    invoke-interface {v0, p1}, Lc8/IOf;->afterOnWindowFocusChanged(Z)V

    .line 236
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 243
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
            "Landroid/widget/TextView;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/uikit/feature/features/AbsFeature<-Landroid/widget/TextView;>;>;"
    iget-object v0, p0, Lc8/uPf;->mFeatureList:Lcom/taobao/uikit/utils/FeatureList;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/utils/FeatureList;->removeFeature(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(JJ)V
    .locals 3
    .param p1, "width"    # J
    .param p3, "height"    # J

    .prologue
    .line 197
    long-to-int v0, p1

    long-to-int v1, p3

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 198
    return-void
.end method
