.class public Lc8/dw;
.super Lc8/ru;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lc8/kn;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lc8/fw;


# direct methods
.method public constructor <init>(Lc8/fw;Landroid/content/Context;Lc8/kn;Z)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tab"    # Lc8/kn;
    .param p4, "forList"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 390
    iput-object p1, p0, Lc8/dw;->this$0:Lc8/fw;

    .line 391
    sget v1, Lcom/youku/phone/R$attr;->actionBarTabStyle:I

    invoke-direct {p0, p2, v4, v1}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 381
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100d4

    aput v2, v1, v3

    iput-object v1, p0, Lc8/dw;->BG_ATTRS:[I

    .line 392
    iput-object p3, p0, Lc8/dw;->mTab:Lc8/kn;

    .line 394
    iget-object v1, p0, Lc8/dw;->BG_ATTRS:[I

    sget v2, Lcom/youku/phone/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v4, v1, v2, v3}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 396
    .local v0, "a":Lc8/cx;
    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0, v3}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/dw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    :cond_0
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 401
    if-eqz p4, :cond_1

    .line 402
    const v1, 0x800013

    invoke-virtual {p0, v1}, Lc8/dw;->setGravity(I)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lc8/dw;->update()V

    .line 406
    return-void
.end method


# virtual methods
.method public bindTab(Lc8/kn;)V
    .locals 0
    .param p1, "tab"    # Lc8/kn;

    .prologue
    .line 409
    iput-object p1, p0, Lc8/dw;->mTab:Lc8/kn;

    .line 410
    invoke-virtual {p0}, Lc8/dw;->update()V

    .line 411
    return-void
.end method

.method public getTab()Lc8/kn;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lc8/dw;->mTab:Lc8/kn;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lc8/ru;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    const-class v0, Lc8/kn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 431
    invoke-super {p0, p1}, Lc8/ru;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 435
    const-class v0, Lc8/kn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 526
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 527
    .local v3, "screenPos":[I
    invoke-virtual {p0, v3}, Lc8/dw;->getLocationOnScreen([I)V

    .line 529
    invoke-virtual {p0}, Lc8/dw;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 530
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lc8/dw;->getWidth()I

    move-result v5

    .line 531
    .local v5, "width":I
    invoke-virtual {p0}, Lc8/dw;->getHeight()I

    move-result v2

    .line 532
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 534
    .local v4, "screenWidth":I
    iget-object v6, p0, Lc8/dw;->mTab:Lc8/kn;

    invoke-virtual {v6}, Lc8/kn;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 537
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v6, 0x31

    aget v7, v3, v7

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 540
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 441
    invoke-super {p0, p1, p2}, Lc8/ru;->onMeasure(II)V

    .line 444
    iget-object v0, p0, Lc8/dw;->this$0:Lc8/fw;

    iget v0, v0, Lc8/fw;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc8/dw;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lc8/dw;->this$0:Lc8/fw;

    iget v1, v1, Lc8/fw;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lc8/dw;->this$0:Lc8/fw;

    iget v0, v0, Lc8/fw;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lc8/ru;->onMeasure(II)V

    .line 448
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Lc8/dw;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 416
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Lc8/ru;->setSelected(Z)V

    .line 417
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 418
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lc8/dw;->sendAccessibilityEvent(I)V

    .line 420
    :cond_0
    return-void

    .line 415
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v11, 0x8

    const/4 v13, -0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 451
    iget-object v6, p0, Lc8/dw;->mTab:Lc8/kn;

    .line 452
    .local v6, "tab":Lc8/kn;
    invoke-virtual {v6}, Lc8/kn;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, "custom":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 454
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 455
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 456
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    :cond_0
    invoke-virtual {p0, v0}, Lc8/dw;->addView(Landroid/view/View;)V

    .line 459
    :cond_1
    iput-object v0, p0, Lc8/dw;->mCustomView:Landroid/view/View;

    .line 460
    iget-object v9, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_2
    iget-object v9, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 462
    iget-object v9, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v9, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_3
    :goto_0
    return-void

    .line 466
    :cond_4
    iget-object v10, p0, Lc8/dw;->mCustomView:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 467
    iget-object v10, p0, Lc8/dw;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lc8/dw;->removeView(Landroid/view/View;)V

    .line 468
    iput-object v12, p0, Lc8/dw;->mCustomView:Landroid/view/View;

    .line 471
    :cond_5
    invoke-virtual {v6}, Lc8/kn;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 472
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lc8/kn;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 474
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_b

    .line 475
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 476
    new-instance v4, Lc8/Ds;

    invoke-virtual {p0}, Lc8/dw;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Lc8/Ds;-><init>(Landroid/content/Context;)V

    .line 477
    .local v4, "iconView":Landroid/widget/ImageView;
    new-instance v5, Lc8/pu;

    invoke-direct {v5, v13, v13}, Lc8/pu;-><init>(II)V

    .line 479
    .local v5, "lp":Lc8/pu;
    iput v14, v5, Lc8/pu;->gravity:I

    .line 480
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    invoke-virtual {p0, v4, v9}, Lc8/dw;->addView(Landroid/view/View;I)V

    .line 482
    iput-object v4, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    .line 484
    .end local v4    # "iconView":Landroid/widget/ImageView;
    .end local v5    # "lp":Lc8/pu;
    :cond_6
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    :cond_7
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v2, 0x1

    .line 492
    .local v2, "hasText":Z
    :goto_2
    if-eqz v2, :cond_d

    .line 493
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_8

    .line 494
    new-instance v8, Lc8/Vs;

    invoke-virtual {p0}, Lc8/dw;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/youku/phone/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v8, v10, v12, v11}, Lc8/Vs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 496
    .local v8, "textView":Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 497
    new-instance v5, Lc8/pu;

    invoke-direct {v5, v13, v13}, Lc8/pu;-><init>(II)V

    .line 499
    .restart local v5    # "lp":Lc8/pu;
    iput v14, v5, Lc8/pu;->gravity:I

    .line 500
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    invoke-virtual {p0, v8}, Lc8/dw;->addView(Landroid/view/View;)V

    .line 502
    iput-object v8, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    .line 504
    .end local v5    # "lp":Lc8/pu;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    :cond_9
    :goto_3
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    .line 512
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lc8/kn;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 515
    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {v6}, Lc8/kn;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 516
    invoke-virtual {p0, p0}, Lc8/dw;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 486
    .end local v2    # "hasText":Z
    :cond_b
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 487
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    iget-object v10, p0, Lc8/dw;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v2, v9

    .line 491
    goto :goto_2

    .line 506
    .restart local v2    # "hasText":Z
    :cond_d
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 507
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v10, p0, Lc8/dw;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 518
    :cond_e
    invoke-virtual {p0, v12}, Lc8/dw;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 519
    invoke-virtual {p0, v9}, Lc8/dw;->setLongClickable(Z)V

    goto/16 :goto_0
.end method
