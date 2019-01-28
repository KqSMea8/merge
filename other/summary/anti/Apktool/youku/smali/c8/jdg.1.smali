.class public Lc8/jdg;
.super Lc8/Hdg;
.source "WXCell.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Hdg",
        "<",
        "Lc8/qeg;",
        ">;"
    }
.end annotation


# instance fields
.field private hasLayout:Z

.field private isSourceUsed:Z

.field private mFlatUIEnabled:Z

.field private mHeadView:Landroid/view/View;

.field private mLastLocationY:I

.field private mLazy:Z

.field private mRealView:Landroid/view/ViewGroup;

.field private mScrollPositon:I

.field private mTempStickyView:Landroid/view/View;

.field private renderData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lc8/Hdg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 51
    iput v1, p0, Lc8/jdg;->mLastLocationY:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jdg;->mLazy:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lc8/jdg;->mScrollPositon:I

    .line 59
    iput-boolean v1, p0, Lc8/jdg;->mFlatUIEnabled:Z

    .line 64
    iput-boolean v1, p0, Lc8/jdg;->isSourceUsed:Z

    .line 66
    iput-boolean v1, p0, Lc8/jdg;->hasLayout:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 4
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lc8/Hdg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 51
    iput v3, p0, Lc8/jdg;->mLastLocationY:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/jdg;->mLazy:Z

    .line 58
    const/4 v2, -0x1

    iput v2, p0, Lc8/jdg;->mScrollPositon:I

    .line 59
    iput-boolean v3, p0, Lc8/jdg;->mFlatUIEnabled:Z

    .line 64
    iput-boolean v3, p0, Lc8/jdg;->isSourceUsed:Z

    .line 66
    iput-boolean v3, p0, Lc8/jdg;->hasLayout:Z

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v2

    invoke-interface {v2}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    .line 80
    .local v0, "attr":Lc8/xYf;
    const-string/jumbo v2, "flat"

    invoke-virtual {v0, v2}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string/jumbo v2, "flat"

    invoke-virtual {v0, v2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lc8/jdg;->mFlatUIEnabled:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "attr":Lc8/xYf;
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "Cell"

    invoke-static {v1}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLocationFromStart()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lc8/jdg;->mLastLocationY:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lc8/jdg;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/jdg;->mRealView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRenderData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lc8/jdg;->renderData:Ljava/lang/Object;

    return-object v0
.end method

.method public getScrollPositon()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lc8/jdg;->mScrollPositon:I

    return v0
.end method

.method public getStickyOffset()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    .line 214
    .local v0, "domObject":Lc8/HYf;
    invoke-virtual {v0}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v3

    const-string/jumbo v4, "stickyOffset"

    invoke-virtual {v3, v4}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v0}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v2

    const-string/jumbo v3, "stickyOffset"

    invoke-virtual {v2, v3}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v1

    .line 218
    .local v1, "offset":F
    invoke-virtual {v0}, Lc8/HYf;->getViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lc8/jdg;->initComponentHostView(Landroid/content/Context;)Lc8/qeg;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/qeg;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 109
    invoke-virtual {p0}, Lc8/jdg;->isSticky()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    new-instance v0, Lc8/qeg;

    invoke-direct {v0, p1}, Lc8/qeg;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "view":Lc8/qeg;
    new-instance v2, Lc8/qeg;

    invoke-direct {v2, p1}, Lc8/qeg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/jdg;->mRealView:Landroid/view/ViewGroup;

    .line 112
    iget-object v2, p0, Lc8/jdg;->mRealView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lc8/qeg;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lc8/jdg;->isFlatUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0, v3, v4}, Lc8/qeg;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    move-object v1, v0

    .line 124
    .end local v0    # "view":Lc8/qeg;
    .local v1, "view":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 119
    .end local v1    # "view":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lc8/qeg;

    invoke-direct {v0, p1}, Lc8/qeg;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v0    # "view":Lc8/qeg;
    iput-object v0, p0, Lc8/jdg;->mRealView:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p0}, Lc8/jdg;->isFlatUIEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {v0, v3, v4}, Lc8/qeg;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    move-object v1, v0

    .line 124
    .restart local v1    # "view":Ljava/lang/Object;
    goto :goto_0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lc8/jdg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getFlatUIContext()Lc8/Gdg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Gdg;->isFlatUIEnabled(Lc8/tbg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lc8/jdg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/jdg;->isSticky()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlatUIEnabled()Z
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lc8/jdg;->mFlatUIEnabled:Z

    return v0
.end method

.method public isHasLayout()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lc8/jdg;->hasLayout:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lc8/jdg;->mLazy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/jdg;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSourceUsed()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lc8/jdg;->isSourceUsed:Z

    return v0
.end method

.method public lazy(Z)V
    .locals 0
    .param p1, "lazy"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lc8/jdg;->mLazy:Z

    .line 96
    return-void
.end method

.method protected mountFlatGUI()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/qeg;

    iget-object v1, p0, Lc8/jdg;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lc8/qeg;->mountFlatGUI(Ljava/util/List;)V

    .line 195
    :cond_0
    return-void
.end method

.method public recoverySticky()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v1, :cond_0

    .line 174
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 177
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_1
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    :cond_2
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/qeg;

    iget-object v2, p0, Lc8/jdg;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/qeg;->removeView(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/qeg;

    iget-object v2, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/qeg;->addView(Landroid/view/View;)V

    .line 185
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 186
    iget-object v1, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 188
    :cond_3
    return-void
.end method

.method public removeSticky()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 150
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/qeg;

    invoke-virtual {v5}, Lc8/qeg;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 151
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/qeg;

    invoke-virtual {v5, v6}, Lc8/qeg;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    .line 152
    new-array v2, v7, [I

    .line 153
    .local v2, "location":[I
    new-array v4, v7, [I

    .line 154
    .local v4, "parentLocation":[I
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/qeg;

    invoke-virtual {v5, v2}, Lc8/qeg;->getLocationOnScreen([I)V

    .line 155
    invoke-virtual {p0}, Lc8/jdg;->getParentScroller()Lc8/ebg;

    move-result-object v5

    invoke-interface {v5}, Lc8/ebg;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 156
    aget v5, v2, v6

    aget v6, v4, v6

    sub-int v0, v5, v6

    .line 157
    .local v0, "headerViewOffsetX":I
    invoke-virtual {p0}, Lc8/jdg;->getParent()Lc8/scg;

    move-result-object v5

    invoke-virtual {v5}, Lc8/scg;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 158
    .local v1, "headerViewOffsetY":I
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/qeg;

    iget-object v6, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    invoke-virtual {v5, v6}, Lc8/qeg;->removeView(Landroid/view/View;)V

    .line 159
    iget-object v5, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lc8/jdg;->mRealView:Landroid/view/ViewGroup;

    .line 160
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lc8/jdg;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lc8/jdg;->mTempStickyView:Landroid/view/View;

    .line 161
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getLayoutWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lc8/jdg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getLayoutHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/qeg;

    iget-object v6, p0, Lc8/jdg;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Lc8/qeg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v5, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    iget-object v5, p0, Lc8/jdg;->mHeadView:Landroid/view/View;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    .end local v0    # "headerViewOffsetX":I
    .end local v1    # "headerViewOffsetY":I
    .end local v2    # "location":[I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "parentLocation":[I
    :cond_0
    return-void
.end method

.method public setHasLayout(Z)V
    .locals 0
    .param p1, "hasLayout"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lc8/jdg;->hasLayout:Z

    .line 243
    return-void
.end method

.method public setLocationFromStart(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 133
    iput p1, p0, Lc8/jdg;->mLastLocationY:I

    .line 134
    return-void
.end method

.method public setRenderData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "renderData"    # Ljava/lang/Object;

    .prologue
    .line 226
    iput-object p1, p0, Lc8/jdg;->renderData:Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setScrollPositon(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 137
    iput p1, p0, Lc8/jdg;->mScrollPositon:I

    .line 138
    return-void
.end method

.method public setSourceUsed(Z)V
    .locals 0
    .param p1, "sourceUsed"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lc8/jdg;->isSourceUsed:Z

    .line 235
    return-void
.end method

.method public unmountFlatGUI()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lc8/jdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/qeg;

    invoke-virtual {v0}, Lc8/qeg;->unmountFlatGUI()V

    .line 202
    :cond_0
    return-void
.end method
