.class public Lc8/Jyb;
.super Ljava/lang/Object;
.source "WXUIModel.java"


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lc8/Jyb;->loadingView:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lc8/Jyb;->errorView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lc8/Jyb;->naviBar:Lc8/gI;

    .line 27
    iput-object v0, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Jyb;->showLoading:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Jyb;->cancelNoti:Z

    .line 36
    iput-object p1, p0, Lc8/Jyb;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lc8/Jyb;->mView:Landroid/view/View;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lc8/Jyb;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lc8/Jyb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Jyb;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lc8/Jyb;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 22
    iput-object p1, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lc8/Jyb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Jyb;

    .prologue
    .line 22
    iget-boolean v0, p0, Lc8/Jyb;->cancelNoti:Z

    return v0
.end method

.method static synthetic access$102(Lc8/Jyb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Jyb;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lc8/Jyb;->cancelNoti:Z

    return p1
.end method

.method private setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "barHeight"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 197
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lc8/Jyb;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    .line 198
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v6, "#666666"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    const-string/jumbo v6, "#ffe7b3"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 200
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 203
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 204
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 209
    div-int/lit8 v2, p3, 0xa

    .line 210
    .local v2, "padding":I
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 211
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    .end local v2    # "padding":I
    :cond_1
    :try_start_0
    iget-object v5, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setElevation(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 219
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lc8/Jyb;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 220
    .local v4, "parentView":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 222
    :try_start_1
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    iget-object v6, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v5

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 225
    if-eqz v4, :cond_2

    move-object v5, v4

    .line 226
    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "parentView":Landroid/view/ViewParent;
    :catch_1
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "barHeight"    # I

    .prologue
    .line 236
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc8/Jyb;->setNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 239
    :cond_1
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 240
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 241
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

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

    .line 242
    .local v0, "animator1":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

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

    .line 245
    .local v1, "animator2":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 249
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 250
    new-instance v3, Lc8/Hyb;

    invoke-direct {v3, p0}, Lc8/Hyb;-><init>(Lc8/Jyb;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 278
    iget-object v3, p0, Lc8/Jyb;->mWarningView:Landroid/widget/TextView;

    new-instance v4, Lc8/Iyb;

    invoke-direct {v4, p0, v2, v1}, Lc8/Iyb;-><init>(Lc8/Jyb;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method
