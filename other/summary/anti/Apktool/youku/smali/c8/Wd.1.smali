.class public Lc8/Wd;
.super Lc8/oc;
.source "HeadOffsetBehavior.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadOffsetBehavior"


# instance fields
.field private mHeadOffset:I

.field private mSkipNestedPreScroll:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/oc;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lc8/oc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getNormalizedOffset(II)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "headHeight"    # I

    .prologue
    .line 185
    sub-int v0, p2, p1

    return v0
.end method

.method private requestAnimateOffsetTo(Lc8/yd;Lc8/tc;IF)V
    .locals 6
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F

    .prologue
    .line 173
    const-class v0, Lc8/oc;

    .line 175
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v2, "animateOffsetTo"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lc8/yd;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lc8/tc;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    .local v1, "targetMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, p0, v2}, Lc8/Wd;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "targetMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v2

    const-string/jumbo v2, "HeadOffsetBehavior"

    const-string/jumbo v3, "error! can not found [animateOffsetTo] method"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/tc;

    invoke-virtual {p0, p1}, Lc8/Wd;->getMaxDragOffset(Lc8/tc;)I

    move-result v0

    return v0
.end method

.method getMaxDragOffset(Lc8/tc;)I
    .locals 2
    .param p1, "view"    # Lc8/tc;

    .prologue
    .line 44
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p1}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lc8/oc;->getMaxDragOffset(Lc8/tc;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p1}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc8/Wd;->getNormalizedOffset(II)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lc8/tc;

    invoke-virtual {p0, p1}, Lc8/Wd;->getScrollRangeForDragFling(Lc8/tc;)I

    move-result v0

    return v0
.end method

.method getScrollRangeForDragFling(Lc8/tc;)I
    .locals 2
    .param p1, "view"    # Lc8/tc;

    .prologue
    .line 55
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p1}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lc8/oc;->getScrollRangeForDragFling(Lc8/tc;)I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p1}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc8/Wd;->getNormalizedOffset(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onNestedFling(Lc8/yd;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .prologue
    .line 17
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/Wd;->onNestedFling(Lc8/yd;Lc8/tc;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Lc8/yd;Lc8/tc;Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .prologue
    .line 132
    const/4 v6, 0x0

    .line 134
    .local v6, "flung":Z
    if-nez p6, :cond_1

    .line 136
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lc8/Wd;->fling(Lc8/yd;Landroid/view/View;IIF)Z

    move-result v6

    .line 167
    :cond_0
    :goto_0
    return v6

    .line 141
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2

    .line 143
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 144
    invoke-virtual {p2}, Lc8/tc;->getDownNestedPreScrollRange()I

    move-result v1

    add-int v7, v0, v1

    .line 145
    .local v7, "targetScroll":I
    invoke-virtual {p0}, Lc8/Wd;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 148
    invoke-direct {p0, p1, p2, v7, p5}, Lc8/Wd;->requestAnimateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    .line 149
    const/4 v6, 0x1

    goto :goto_0

    .line 154
    .end local v7    # "targetScroll":I
    :cond_2
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    if-lez v0, :cond_3

    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p2}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 155
    :cond_3
    invoke-virtual {p2}, Lc8/tc;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v7, v0

    .line 159
    .restart local v7    # "targetScroll":I
    :goto_1
    invoke-virtual {p0}, Lc8/Wd;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 162
    invoke-direct {p0, p1, p2, v7, p5}, Lc8/Wd;->requestAnimateOffsetTo(Lc8/yd;Lc8/tc;IF)V

    .line 163
    const/4 v6, 0x1

    goto :goto_0

    .line 157
    .end local v7    # "targetScroll":I
    :cond_4
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p2}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc8/Wd;->getNormalizedOffset(II)I

    move-result v0

    neg-int v7, v0

    .restart local v7    # "targetScroll":I
    goto :goto_1
.end method

.method public bridge synthetic onNestedPreScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 17
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/Wd;->onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[I)V
    .locals 7
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .prologue
    .line 82
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Lc8/Wd;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 84
    if-gez p5, :cond_1

    .line 86
    invoke-virtual {p2}, Lc8/tc;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 87
    .local v4, "min":I
    invoke-virtual {p2}, Lc8/tc;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 99
    .local v5, "max":I
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Wd;->scroll(Lc8/yd;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 101
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_0
    return-void

    .line 91
    :cond_1
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    if-lez v0, :cond_2

    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p2}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 92
    :cond_2
    invoke-virtual {p2}, Lc8/tc;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 97
    .restart local v4    # "min":I
    :goto_1
    const/4 v5, 0x0

    .restart local v5    # "max":I
    goto :goto_0

    .line 94
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_3
    iget v0, p0, Lc8/Wd;->mHeadOffset:I

    invoke-virtual {p2}, Lc8/tc;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc8/Wd;->getNormalizedOffset(II)I

    move-result v0

    neg-int v4, v0

    .restart local v4    # "min":I
    goto :goto_1
.end method

.method public onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[II)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I

    .prologue
    .line 74
    if-nez p7, :cond_0

    .line 75
    invoke-virtual/range {p0 .. p6}, Lc8/Wd;->onNestedPreScroll(Lc8/yd;Lc8/tc;Landroid/view/View;II[I)V

    .line 77
    :cond_0
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 17
    move-object v2, p2

    check-cast v2, Lc8/tc;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lc8/Wd;->onNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;IIII)V
    .locals 6
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "child"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v5, 0x0

    .line 107
    if-gez p7, :cond_0

    .line 111
    invoke-virtual {p2}, Lc8/tc;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 110
    invoke-virtual/range {v0 .. v5}, Lc8/Wd;->scroll(Lc8/yd;Landroid/view/View;III)I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wd;->mSkipNestedPreScroll:Z

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean v5, p0, Lc8/Wd;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public bridge synthetic onStopNestedScroll(Lc8/yd;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Lc8/tc;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Wd;->onStopNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lc8/yd;Lc8/tc;Landroid/view/View;)V
    .locals 1
    .param p1, "coordinatorLayout"    # Lc8/yd;
    .param p2, "abl"    # Lc8/tc;
    .param p3, "target"    # Landroid/view/View;

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Wd;->mSkipNestedPreScroll:Z

    .line 126
    return-void
.end method

.method public setHeadOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 34
    iput p1, p0, Lc8/Wd;->mHeadOffset:I

    .line 35
    return-void
.end method
