.class public Lc8/rOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageLoadSuccListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qxf",
        "<",
        "Lc8/wxf;",
        ">;"
    }
.end annotation


# instance fields
.field private isInLayoutPass:Z

.field final synthetic this$0:Lc8/tOf;


# direct methods
.method constructor <init>(Lc8/tOf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tOf;

    .prologue
    .line 607
    iput-object p1, p0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyEvent(Lc8/wxf;Z)Z
    .locals 11
    .param p1, "event"    # Lc8/wxf;
    .param p2, "isImmediate"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 616
    invoke-virtual {p1}, Lc8/wxf;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "callbackUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v7, v7, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v7, v7, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 620
    const-string/jumbo v7, "UIKitImage"

    const-string/jumbo v8, "callback url not match target url, callback=%s, target=%s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v1, v9, v6

    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v9}, Lc8/APf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :cond_0
    :goto_0
    return v5

    .line 624
    :cond_1
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-virtual {v7}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v3

    .line 625
    .local v3, "hostView":Landroid/widget/ImageView;
    if-nez v3, :cond_2

    .line 626
    iget-object v5, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iput v8, v5, Lc8/tOf;->mLoadState:I

    move v5, v6

    .line 627
    goto :goto_0

    .line 630
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v7, p0, Lc8/rOf;->isInLayoutPass:Z

    if-eqz v7, :cond_3

    .line 631
    new-instance v6, Lc8/pOf;

    invoke-direct {v6, p0, p1}, Lc8/pOf;-><init>(Lc8/rOf;Lc8/wxf;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 640
    :cond_3
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iput v8, v7, Lc8/tOf;->mLoadState:I

    .line 641
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 642
    .local v2, "d":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_4

    .line 643
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    const/4 v8, 0x0

    iget-object v9, p0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-static {v9}, Lc8/tOf;->access$000(Lc8/tOf;)Z

    move-result v9

    invoke-static {v7, v3, v8, v6, v9}, Lc8/tOf;->access$100(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    goto :goto_0

    .line 647
    :cond_4
    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v4

    .line 648
    .local v4, "intermediate":Z
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-boolean v0, v7, Lc8/tOf;->mFadeIn:Z

    .line 649
    .local v0, "animation":Z
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lc8/tOf;->access$500(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 650
    const/4 v0, 0x0

    .line 653
    :cond_5
    if-nez p2, :cond_8

    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget v7, v7, Lc8/tOf;->mLoadState:I

    if-eq v7, v10, :cond_8

    .line 654
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    if-eqz v6, :cond_7

    .line 656
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_6

    .line 657
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 677
    :cond_6
    :goto_1
    if-nez v4, :cond_0

    .line 678
    invoke-virtual {p1}, Lc8/wxf;->getTicket()Lc8/nxf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc8/nxf;->setDone(Z)V

    .line 679
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iput v10, v6, Lc8/tOf;->mLoadState:I

    .line 680
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mUserSuccListener:Lc8/qxf;

    if-eqz v6, :cond_0

    .line 681
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mUserSuccListener:Lc8/qxf;

    invoke-interface {v6, p1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    goto/16 :goto_0

    .line 660
    :cond_7
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 661
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 663
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v7, Lc8/qOf;

    invoke-direct {v7, p0, v3}, Lc8/qOf;-><init>(Lc8/rOf;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 671
    iget-object v6, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v6, v6, Lc8/tOf;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 674
    :cond_8
    iget-object v7, p0, Lc8/rOf;->this$0:Lc8/tOf;

    iget-object v8, p0, Lc8/rOf;->this$0:Lc8/tOf;

    invoke-static {v8}, Lc8/tOf;->access$000(Lc8/tOf;)Z

    move-result v8

    invoke-static {v7, v3, v2, v6, v8}, Lc8/tOf;->access$100(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    goto :goto_1

    .line 660
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 607
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/rOf;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 1
    .param p1, "event"    # Lc8/wxf;

    .prologue
    .line 612
    invoke-virtual {p1}, Lc8/wxf;->isImmediate()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc8/rOf;->applyEvent(Lc8/wxf;Z)Z

    move-result v0

    return v0
.end method

.method public setIsInLayoutPass(Z)V
    .locals 0
    .param p1, "isInLayoutPass"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, Lc8/rOf;->isInLayoutPass:Z

    .line 689
    return-void
.end method
