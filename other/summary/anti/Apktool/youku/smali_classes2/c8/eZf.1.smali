.class public Lc8/eZf;
.super Ljava/lang/Object;
.source "AnimationAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationAction"


# instance fields
.field private final animation:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final callback:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAnimationBean:Lc8/Kag;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final ref:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lc8/Kag;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animationBean"    # Lc8/Kag;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/eZf;-><init>(Ljava/lang/String;Lc8/Kag;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lc8/Kag;Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animationBean"    # Lc8/Kag;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lc8/eZf;->ref:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    .line 105
    iput-object p3, p0, Lc8/eZf;->callback:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/eZf;->animation:Ljava/lang/String;

    .line 107
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animation"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lc8/eZf;->ref:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lc8/eZf;->animation:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lc8/eZf;->callback:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private createAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "viewPortWidth"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 179
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-object v6, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-object v5, v6, Lc8/Kag;->styles:Lc8/Jag;

    .line 183
    .local v5, "style":Lc8/Jag;
    if-eqz v5, :cond_0

    .line 185
    invoke-virtual {v5}, Lc8/Jag;->getHolders()Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "holders":Ljava/util/List;, "Ljava/util/List<Landroid/animation/PropertyValuesHolder;>;"
    iget-object v6, v5, Lc8/Jag;->backgroundColor:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 188
    invoke-static {p1}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v1

    .local v1, "borderDrawable":Lc8/Ieg;
    if-eqz v1, :cond_7

    .line 189
    new-instance v6, Lc8/Dag;

    invoke-direct {v6}, Lc8/Dag;-><init>()V

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v12, [Ljava/lang/Integer;

    invoke-virtual {v1}, Lc8/Ieg;->getColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, v5, Lc8/Jag;->backgroundColor:Ljava/lang/String;

    invoke-static {v9}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v1    # "borderDrawable":Lc8/Ieg;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lc8/Jag;->width:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lc8/Jag;->height:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 203
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 204
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, v5, Lc8/Jag;->width:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    new-instance v6, Lc8/Nag;

    invoke-direct {v6}, Lc8/Nag;-><init>()V

    new-array v7, v12, [I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v8, v7, v10

    iget-object v8, v5, Lc8/Jag;->width:Ljava/lang/String;

    invoke-static {v8}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8, p2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_4
    iget-object v6, v5, Lc8/Jag;->height:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 209
    new-instance v6, Lc8/Fag;

    invoke-direct {v6}, Lc8/Fag;-><init>()V

    new-array v7, v12, [I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v8, v7, v10

    iget-object v8, v5, Lc8/Jag;->height:Ljava/lang/String;

    invoke-static {v8}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8, p2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-virtual {v5}, Lc8/Jag;->getPivot()Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 215
    invoke-virtual {v5}, Lc8/Jag;->getPivot()Landroid/util/Pair;

    move-result-object v4

    .line 216
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 217
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    .line 219
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-wide v6, v6, Lc8/Kag;->delay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "borderDrawable":Lc8/Ieg;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 194
    new-instance v7, Lc8/Dag;

    invoke-direct {v7}, Lc8/Dag;-><init>()V

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v9, v12, [Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    iget-object v6, v5, Lc8/Jag;->backgroundColor:Ljava/lang/String;

    invoke-static {v6}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private createAnimatorListener(Lc8/nVf;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lc8/cZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/cZf;-><init>(Lc8/eZf;Lc8/nVf;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createTimeInterpolator()Landroid/view/animation/Interpolator;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const v9, 0x3ed70a3d    # 0.42f

    const/high16 v8, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 252
    iget-object v3, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-object v0, v3, Lc8/Kag;->timingFunction:Ljava/lang/String;

    .line 253
    .local v0, "interpolator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 268
    :try_start_0
    new-instance v2, Lc8/fgg;

    iget-object v3, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-object v3, v3, Lc8/Kag;->timingFunction:Ljava/lang/String;

    new-instance v5, Lc8/dZf;

    invoke-direct {v5, p0}, Lc8/dZf;-><init>(Lc8/eZf;)V

    invoke-direct {v2, v3, v5}, Lc8/fgg;-><init>(Ljava/lang/String;Lc8/dgg;)V

    .line 276
    .local v2, "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    const-string/jumbo v3, "cubic-bezier"

    invoke-virtual {v2, v3}, Lc8/fgg;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 278
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v5, v6, v7, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 288
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :goto_1
    return-object v3

    .line 254
    :sswitch_0
    const-string/jumbo v5, "ease-in"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ease-out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "ease-in-out"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "ease"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v5, "linear"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_0

    .line 256
    :pswitch_0
    invoke-static {v9, v7, v6, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 258
    :pswitch_1
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v7, v7, v3, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 260
    :pswitch_2
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v9, v7, v3, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 262
    :pswitch_3
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v8, v3, v8, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 264
    :pswitch_4
    invoke-static {v7, v7, v6, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v2    # "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :cond_1
    move-object v3, v4

    .line 281
    goto :goto_1

    .line 284
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 288
    goto :goto_1

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_0
        -0x41b970db -> :sswitch_4
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_2
        0x2f63ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startAnimation(Lc8/nVf;Lc8/tbg;)V
    .locals 8
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    if-eqz p2, :cond_1

    .line 142
    iget-object v5, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-boolean v5, v5, Lc8/Kag;->needLayout:Z

    invoke-virtual {p2, v5}, Lc8/tbg;->setNeedLayoutOnAnimation(Z)V

    .line 145
    :cond_0
    invoke-virtual {p2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 146
    new-instance v3, Lc8/Lag;

    iget-object v5, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-object v6, p0, Lc8/eZf;->callback:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lc8/Lag;-><init>(Lc8/Kag;Ljava/lang/String;)V

    .line 147
    .local v3, "holder":Lc8/Lag;
    invoke-virtual {p2, v3}, Lc8/tbg;->postAnimation(Lc8/Lag;)V

    .line 174
    .end local v3    # "holder":Lc8/Lag;
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lc8/eZf;->createAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 153
    iget-object v5, p0, Lc8/eZf;->callback:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lc8/eZf;->createAnimatorListener(Lc8/nVf;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 154
    .local v1, "animatorCallback":Landroid/animation/Animator$AnimatorListener;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_3

    invoke-virtual {p2}, Lc8/tbg;->isLayerTypeEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {p2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 158
    :cond_3
    invoke-direct {p0}, Lc8/eZf;->createTimeInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 159
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    .line 160
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    :cond_4
    if-eqz v4, :cond_5

    .line 163
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    :cond_5
    invoke-virtual {p2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-object v6, v6, Lc8/Kag;->styles:Lc8/Jag;

    invoke-virtual {v6}, Lc8/Jag;->getCameraDistance()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setCameraDistance(F)V

    .line 166
    iget-object v5, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    iget-wide v6, v5, Lc8/Kag;->duration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 167
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "animatorCallback":Landroid/animation/Animator$AnimatorListener;
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AnimationAction"

    invoke-static {v2}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 9
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 113
    :try_start_0
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/eZf;->animation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/eZf;->ref:Ljava/lang/String;

    invoke-interface {p1, v0}, Lc8/gYf;->getDomByRef(Ljava/lang/String;)Lc8/HYf;

    move-result-object v7

    .local v7, "domObject":Lc8/HYf;
    if-eqz v7, :cond_0

    .line 116
    iget-object v0, p0, Lc8/eZf;->animation:Ljava/lang/String;

    const-class v1, Lc8/Kag;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Kag;

    .line 117
    .local v6, "animationBean":Lc8/Kag;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lc8/Kag;->styles:Lc8/Jag;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v7}, Lc8/HYf;->getLayoutWidth()F

    move-result v0

    float-to-int v3, v0

    .line 119
    .local v3, "width":I
    invoke-virtual {v7}, Lc8/HYf;->getLayoutHeight()F

    move-result v0

    float-to-int v4, v0

    .line 120
    .local v4, "height":I
    iget-object v0, v6, Lc8/Kag;->styles:Lc8/Jag;

    iget-object v1, v6, Lc8/Kag;->styles:Lc8/Jag;

    iget-object v1, v1, Lc8/Jag;->transformOrigin:Ljava/lang/String;

    iget-object v2, v6, Lc8/Kag;->styles:Lc8/Jag;

    iget-object v2, v2, Lc8/Jag;->transform:Ljava/lang/String;

    invoke-interface {p1}, Lc8/gYf;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lc8/Jag;->init(Ljava/lang/String;Ljava/lang/String;III)V

    .line 123
    iput-object v6, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    .line 124
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v6    # "animationBean":Lc8/Kag;
    .end local v7    # "domObject":Lc8/HYf;
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v8

    .line 128
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "AnimationAction"

    invoke-static {v8}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 2
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 135
    iget-object v1, p0, Lc8/eZf;->mAnimationBean:Lc8/Kag;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v0

    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lc8/eZf;->ref:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/sYf;->getComponent(Ljava/lang/String;)Lc8/tbg;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/eZf;->startAnimation(Lc8/nVf;Lc8/tbg;)V

    .line 138
    .end local v0    # "instance":Lc8/nVf;
    :cond_0
    return-void
.end method
