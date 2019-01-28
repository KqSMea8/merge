.class public Lc8/xI;
.super Ljava/lang/Object;
.source "WVUIModel.java"


# instance fields
.field private cancelNoti:Z

.field private errorView:Landroid/view/View;

.field private loadingView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private mWarningView:Landroid/widget/TextView;

.field private naviBar:Lc8/gI;

.field private showLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    .line 36
    iput-object v0, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xI;->showLoading:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xI;->cancelNoti:Z

    .line 45
    iput-object p1, p0, Lc8/xI;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lc8/xI;->mView:Landroid/view/View;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lc8/xI;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/xI;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lc8/xI;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lc8/xI;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lc8/xI;)Z
    .locals 1
    .param p0, "x0"    # Lc8/xI;

    .prologue
    .line 31
    iget-boolean v0, p0, Lc8/xI;->cancelNoti:Z

    return v0
.end method

.method static synthetic access$102(Lc8/xI;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/xI;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lc8/xI;->cancelNoti:Z

    return p1
.end method

.method private setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "barHeight"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 207
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lc8/xI;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    .line 208
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v6, "#666666"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v6, "#ffe7b3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 210
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 212
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 214
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 215
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_0
    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 220
    div-int/lit8 v2, p3, 0xa

    .line 221
    .local v2, "padding":I
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 222
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    .end local v2    # "padding":I
    :cond_1
    :try_start_0
    iget-object v5, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setElevation(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lc8/xI;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 231
    .local v4, "parentView":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 233
    :try_start_1
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v6, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_2
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v5

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 236
    if-eqz v4, :cond_2

    move-object v5, v4

    .line 237
    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "parentView":Landroid/view/ViewParent;
    :catch_1
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public disableShowLoading()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xI;->showLoading:Z

    .line 55
    return-void
.end method

.method public enableShowLoading()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xI;->showLoading:Z

    .line 51
    return-void
.end method

.method public getErrorView()Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lc8/kI;

    iget-object v1, p0, Lc8/xI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/kI;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lc8/xI;->setErrorView(Landroid/view/View;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    return-object v0
.end method

.method public hideErrorPage()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 121
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 76
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public hideNaviBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 187
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    invoke-virtual {v0}, Lc8/gI;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    invoke-virtual {v0, v1}, Lc8/gI;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public isShowLoading()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lc8/xI;->showLoading:Z

    return v0
.end method

.method public loadErrorPage()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lc8/kI;

    iget-object v1, p0, Lc8/xI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/kI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lc8/xI;->setErrorView(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 115
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lc8/xI;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_1
    return-void
.end method

.method public resetNaviBar()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    invoke-virtual {v0}, Lc8/gI;->resetState()V

    .line 184
    :cond_0
    return-void
.end method

.method public setErrorView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 127
    if-eqz p1, :cond_2

    .line 128
    iput-object p1, p0, Lc8/xI;->errorView:Landroid/view/View;

    .line 129
    iget-object v4, p0, Lc8/xI;->errorView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v4, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 131
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 132
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    iget-object v4, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v4, p0, Lc8/xI;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 139
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 141
    :goto_0
    instance-of v4, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 142
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    :cond_1
    iget-object v4, p0, Lc8/xI;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 145
    .local v3, "parentView":Landroid/view/ViewParent;
    if-eqz v3, :cond_2

    .line 147
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v5, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentView":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    return-void

    .line 139
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 150
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "parentView":Landroid/view/ViewParent;
    :catch_0
    move-exception v4

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_2

    .line 152
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "parentView":Landroid/view/ViewParent;
    iget-object v4, p0, Lc8/xI;->errorView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    iput-object p1, p0, Lc8/xI;->loadingView:Landroid/view/View;

    .line 84
    iget-object v4, p0, Lc8/xI;->loadingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v4, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 86
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 87
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    iget-object v4, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    iget-object v4, p0, Lc8/xI;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 93
    .local v3, "parentView":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    .line 95
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v5, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "parentView":Landroid/view/ViewParent;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "parentView":Landroid/view/ViewParent;
    :catch_0
    move-exception v4

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "parentView":Landroid/view/ViewParent;
    iget-object v4, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setNaviBar(Lc8/gI;)V
    .locals 2
    .param p1, "view"    # Lc8/gI;

    .prologue
    .line 171
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/gI;->setVisibility(I)V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    iput-object p1, p0, Lc8/xI;->naviBar:Lc8/gI;

    .line 178
    :cond_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lc8/nI;

    iget-object v1, p0, Lc8/xI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/nI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lc8/xI;->setLoadingView(Landroid/view/View;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 70
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lc8/xI;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_1
    return-void
.end method

.method public showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "barHeight"    # I

    .prologue
    .line 247
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc8/xI;->setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 250
    :cond_1
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 251
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 252
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    neg-int v7, p3

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 253
    .local v0, "animator1":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    neg-int v7, p3

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 256
    .local v1, "animator2":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 257
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 259
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 260
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 261
    new-instance v3, Lc8/vI;

    invoke-direct {v3, p0}, Lc8/vI;-><init>(Lc8/xI;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 298
    iget-object v3, p0, Lc8/xI;->mWarningView:Landroid/widget/TextView;

    new-instance v4, Lc8/wI;

    invoke-direct {v4, p0, v2, v1}, Lc8/wI;-><init>(Lc8/xI;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method public switchNaviBar(I)V
    .locals 1
    .param p1, "start"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lc8/xI;->naviBar:Lc8/gI;

    invoke-virtual {v0}, Lc8/gI;->startLoading()V

    .line 201
    :cond_0
    return-void
.end method
