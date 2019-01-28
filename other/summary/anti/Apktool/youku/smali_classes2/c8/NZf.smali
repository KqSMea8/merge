.class public Lc8/NZf;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QZf;


# direct methods
.method constructor <init>(Lc8/QZf;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 441
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 442
    .local v3, "holders":[Landroid/animation/PropertyValuesHolder;
    move-object v0, v3

    .local v0, "arr$":[Landroid/animation/PropertyValuesHolder;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 443
    .local v2, "holder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "property":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 442
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    :sswitch_0
    const-string/jumbo v12, "width"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v8

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "height"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v9

    goto :goto_1

    :sswitch_2
    const-string/jumbo v12, "marginTop"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v10

    goto :goto_1

    :sswitch_3
    const-string/jumbo v12, "marginLeft"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v11

    goto :goto_1

    :sswitch_4
    const-string/jumbo v12, "marginRight"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v12, "marginBottom"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    .line 446
    :pswitch_0
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v7}, Lc8/HYf;->setStyleWidth(F)V

    goto :goto_2

    .line 450
    :pswitch_1
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v7}, Lc8/HYf;->setStyleHeight(F)V

    goto :goto_2

    .line 454
    :pswitch_2
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v9, v7}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_2

    .line 458
    :pswitch_3
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v8, v7}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_2

    .line 462
    :pswitch_4
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v10, v7}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_2

    .line 466
    :pswitch_5
    iget-object v7, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v7}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v12

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v12, v11, v7}, Lc8/HYf;->setMargin(IF)V

    goto/16 :goto_2

    .line 474
    .end local v2    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "property":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v7

    iget-object v8, p0, Lc8/NZf;->this$0:Lc8/QZf;

    invoke-static {v8}, Lc8/QZf;->access$400(Lc8/QZf;)Lc8/HYf;

    move-result-object v8

    invoke-virtual {v8}, Lc8/HYf;->getDomContext()Lc8/pYf;

    move-result-object v8

    invoke-interface {v8}, Lc8/pYf;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/EYf;->getDomContext(Ljava/lang/String;)Lc8/gYf;

    move-result-object v1

    .line 475
    .local v1, "domActionContext":Lc8/gYf;
    if-nez v1, :cond_3

    .line 483
    :cond_2
    :goto_3
    return-void

    .line 478
    :cond_3
    invoke-interface {v1}, Lc8/gYf;->markDirty()V

    .line 479
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v7

    const/16 v8, 0xfb

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Lc8/EYf;->sendEmptyMessageDelayed(IJ)V

    .line 480
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 481
    const-string/jumbo v7, "WXTransition send layout batch msg"

    invoke-static {v7}, Lc8/xgg;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 444
    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_1
        -0x3e464339 -> :sswitch_2
        -0x113c6e87 -> :sswitch_5
        0x6be2dc6 -> :sswitch_0
        0x3a1ea90e -> :sswitch_4
        0x757a12d5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
