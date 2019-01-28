.class public Lc8/hc;
.super Lc8/Tg;
.source "TextScale.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/Tg;-><init>()V

    return-void
.end method

.method private captureValues(Lc8/Ch;)V
    .locals 4
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 49
    iget-object v1, p1, Lc8/Ch;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p1, Lc8/Ch;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:textscale:scale"

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Lc8/Ch;)V
    .locals 0
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lc8/hc;->captureValues(Lc8/Ch;)V

    .line 46
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 0
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/hc;->captureValues(Lc8/Ch;)V

    .line 41
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 58
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p2, Lc8/Ch;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p3, Lc8/Ch;->view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/TextView;

    if-nez v6, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    iget-object v5, p3, Lc8/Ch;->view:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, "view":Landroid/widget/TextView;
    iget-object v4, p2, Lc8/Ch;->values:Ljava/util/Map;

    .line 64
    .local v4, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p3, Lc8/Ch;->values:Ljava/util/Map;

    .line 65
    .local v2, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "android:textscale:scale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "android:textscale:scale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 67
    .local v3, "startSize":F
    :goto_1
    const-string/jumbo v6, "android:textscale:scale"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android:textscale:scale"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 69
    .local v1, "endSize":F
    :goto_2
    cmpl-float v6, v3, v1

    if-eqz v6, :cond_0

    .line 73
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 75
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Lc8/gc;

    invoke-direct {v6, p0, v5}, Lc8/gc;-><init>(Lc8/hc;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endSize":F
    .end local v3    # "startSize":F
    :cond_2
    move v3, v7

    .line 65
    goto :goto_1

    .restart local v3    # "startSize":F
    :cond_3
    move v1, v7

    .line 67
    goto :goto_2
.end method
