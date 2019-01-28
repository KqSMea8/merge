.class public Lc8/Ie;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lc8/Fe;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lc8/Ke;


# direct methods
.method public constructor <init>(Lc8/Ke;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lc8/Ke;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1513
    iput-object p1, p0, Lc8/Ie;->this$0:Lc8/Ke;

    .line 1514
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1511
    const/4 v0, 0x2

    iput v0, p0, Lc8/Ie;->mDefaultMaxLines:I

    .line 1515
    iget v0, p1, Lc8/Ke;->mTabBackgroundResId:I

    if-eqz v0, :cond_0

    .line 1516
    iget v0, p1, Lc8/Ke;->mTabBackgroundResId:I

    .line 1517
    invoke-static {p2, v0}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1516
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1519
    :cond_0
    iget v0, p1, Lc8/Ke;->mTabPaddingStart:I

    iget v1, p1, Lc8/Ke;->mTabPaddingTop:I

    iget v2, p1, Lc8/Ke;->mTabPaddingEnd:I

    iget v3, p1, Lc8/Ke;->mTabPaddingBottom:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1521
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lc8/Ie;->setGravity(I)V

    .line 1522
    invoke-virtual {p0, v4}, Lc8/Ie;->setOrientation(I)V

    .line 1523
    invoke-virtual {p0, v4}, Lc8/Ie;->setClickable(Z)V

    .line 1525
    invoke-virtual {p0}, Lc8/Ie;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lc8/jm;->getSystemIcon(Landroid/content/Context;I)Lc8/jm;

    move-result-object v0

    .line 1524
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Lc8/jm;)V

    .line 1526
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .prologue
    .line 1818
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "iconView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1729
    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    invoke-virtual {v8}, Lc8/Fe;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1730
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    invoke-virtual {v8}, Lc8/Fe;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1731
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lc8/Ie;->mTab:Lc8/Fe;

    invoke-virtual {v8}, Lc8/Fe;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1733
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    :goto_2
    if-eqz p2, :cond_0

    .line 1734
    if-eqz v3, :cond_7

    .line 1735
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1736
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1737
    invoke-virtual {p0, v7}, Lc8/Ie;->setVisibility(I)V

    .line 1742
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1745
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v2, 0x1

    .line 1746
    .local v2, "hasText":Z
    :goto_4
    if-eqz p1, :cond_1

    .line 1747
    if-eqz v2, :cond_9

    .line 1748
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1750
    invoke-virtual {p0, v7}, Lc8/Ie;->setVisibility(I)V

    .line 1755
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1758
    :cond_1
    if-eqz p2, :cond_3

    .line 1759
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1760
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 1761
    .local v0, "bottomMargin":I
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1763
    iget-object v8, p0, Lc8/Ie;->this$0:Lc8/Ke;

    invoke-virtual {v8, v9}, Lc8/Ke;->dpToPx(I)I

    move-result v0

    .line 1765
    :cond_2
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v8, :cond_3

    .line 1766
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1767
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1771
    .end local v0    # "bottomMargin":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    if-nez v2, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1772
    invoke-virtual {p0, p0}, Lc8/Ie;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1777
    :goto_6
    return-void

    .end local v1    # "contentDesc":Ljava/lang/CharSequence;
    .end local v2    # "hasText":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_4
    move-object v3, v6

    .line 1729
    goto :goto_0

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v5, v6

    .line 1730
    goto :goto_1

    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_6
    move-object v1, v6

    .line 1731
    goto :goto_2

    .line 1739
    .restart local v1    # "contentDesc":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1740
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    move v2, v7

    .line 1745
    goto :goto_4

    .line 1752
    .restart local v2    # "hasText":Z
    :cond_9
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1753
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1774
    :cond_a
    invoke-virtual {p0, v6}, Lc8/Ie;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1775
    invoke-virtual {p0, v7}, Lc8/Ie;->setLongClickable(Z)V

    goto :goto_6
.end method


# virtual methods
.method public getTab()Lc8/Fe;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lc8/Ie;->mTab:Lc8/Fe;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1572
    const-class v0, Lc8/kn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1573
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1578
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1580
    const-class v0, Lc8/kn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1581
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1781
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 1782
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1783
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lc8/Ie;->getLocationOnScreen([I)V

    .line 1784
    invoke-virtual {p0, v2}, Lc8/Ie;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1786
    invoke-virtual {p0}, Lc8/Ie;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1787
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lc8/Ie;->getWidth()I

    move-result v8

    .line 1788
    .local v8, "width":I
    invoke-virtual {p0}, Lc8/Ie;->getHeight()I

    move-result v3

    .line 1789
    .local v3, "height":I
    aget v9, v6, v12

    div-int/lit8 v10, v3, 0x2

    add-int v4, v9, v10

    .line 1790
    .local v4, "midy":I
    aget v9, v6, v11

    div-int/lit8 v10, v8, 0x2

    add-int v5, v9, v10

    .line 1791
    .local v5, "referenceX":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_0

    .line 1792
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1793
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 1796
    .end local v7    # "screenWidth":I
    :cond_0
    iget-object v9, p0, Lc8/Ie;->mTab:Lc8/Fe;

    invoke-virtual {v9}, Lc8/Fe;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1798
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 1800
    const v9, 0x800035

    aget v10, v6, v12

    add-int/2addr v10, v3

    iget v11, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v9, v5, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 1806
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1807
    return v12

    .line 1804
    :cond_1
    const/16 v9, 0x51

    invoke-virtual {v0, v9, v11, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 15
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    .prologue
    .line 1585
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1586
    .local v8, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1587
    .local v7, "specWidthMode":I
    iget-object v12, p0, Lc8/Ie;->this$0:Lc8/Ke;

    invoke-virtual {v12}, Lc8/Ke;->getTabMaxWidth()I

    move-result v6

    .line 1590
    .local v6, "maxWidth":I
    move/from16 v3, p2

    .line 1592
    .local v3, "heightMeasureSpec":I
    if-lez v6, :cond_6

    if-eqz v7, :cond_0

    if-le v8, v6, :cond_6

    .line 1596
    :cond_0
    iget-object v12, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget v12, v12, Lc8/Ke;->mTabMaxWidth:I

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1603
    .local v11, "widthMeasureSpec":I
    :goto_0
    invoke-super {p0, v11, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1606
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_5

    .line 1607
    invoke-virtual {p0}, Lc8/Ie;->getResources()Landroid/content/res/Resources;

    .line 1608
    iget-object v12, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget v9, v12, Lc8/Ke;->mTabTextSize:F

    .line 1609
    .local v9, "textSize":F
    iget v5, p0, Lc8/Ie;->mDefaultMaxLines:I

    .line 1611
    .local v5, "maxLines":I
    iget-object v12, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 1613
    const/4 v5, 0x1

    .line 1619
    :cond_1
    :goto_1
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 1620
    .local v2, "curTextSize":F
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 1621
    .local v0, "curLineCount":I
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    .line 1623
    .local v1, "curMaxLines":I
    cmpl-float v12, v9, v2

    if-nez v12, :cond_2

    if-ltz v1, :cond_5

    if-eq v5, v1, :cond_5

    .line 1625
    :cond_2
    const/4 v10, 0x1

    .line 1627
    .local v10, "updateTextView":Z
    iget-object v12, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget v12, v12, Lc8/Ke;->mMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    cmpl-float v12, v9, v2

    if-lez v12, :cond_4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 1633
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1634
    .local v4, "layout":Landroid/text/Layout;
    if-eqz v4, :cond_3

    const/4 v12, 0x0

    invoke-direct {p0, v4, v12, v9}, Lc8/Ie;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v12

    .line 1635
    invoke-virtual {p0}, Lc8/Ie;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {p0}, Lc8/Ie;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lc8/Ie;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 1636
    :cond_3
    const/4 v10, 0x0

    .line 1640
    .end local v4    # "layout":Landroid/text/Layout;
    :cond_4
    if-eqz v10, :cond_5

    .line 1641
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1642
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1643
    invoke-super {p0, v11, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1647
    .end local v0    # "curLineCount":I
    .end local v1    # "curMaxLines":I
    .end local v2    # "curTextSize":F
    .end local v5    # "maxLines":I
    .end local v9    # "textSize":F
    .end local v10    # "updateTextView":Z
    :cond_5
    return-void

    .line 1599
    .end local v11    # "widthMeasureSpec":I
    :cond_6
    move/from16 v11, p1

    .restart local v11    # "widthMeasureSpec":I
    goto :goto_0

    .line 1614
    .restart local v5    # "maxLines":I
    .restart local v9    # "textSize":F
    :cond_7
    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 1616
    iget-object v12, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget v9, v12, Lc8/Ke;->mTabTextMultiLineSize:F

    goto :goto_1
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 1530
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1532
    .local v0, "handled":Z
    iget-object v1, p0, Lc8/Ie;->mTab:Lc8/Fe;

    if-eqz v1, :cond_1

    .line 1533
    if-nez v0, :cond_0

    .line 1534
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/Ie;->playSoundEffect(I)V

    .line 1536
    :cond_0
    iget-object v1, p0, Lc8/Ie;->mTab:Lc8/Fe;

    invoke-virtual {v1}, Lc8/Fe;->select()V

    .line 1537
    const/4 v0, 0x1

    .line 1539
    .end local v0    # "handled":Z
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Ie;->setTab(Lc8/Fe;)V

    .line 1658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Ie;->setSelected(Z)V

    .line 1659
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 1545
    invoke-virtual {p0}, Lc8/Ie;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_4

    const/4 v0, 0x1

    .line 1547
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1549
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1551
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lc8/Ie;->sendAccessibilityEvent(I)V

    .line 1556
    :cond_0
    iget-object v1, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1557
    iget-object v1, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1559
    :cond_1
    iget-object v1, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1560
    iget-object v1, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1562
    :cond_2
    iget-object v1, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1563
    iget-object v1, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1565
    :cond_3
    return-void

    .line 1545
    .end local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTab(Lc8/Fe;)V
    .locals 1
    .param p1, "tab"    # Lc8/Fe;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1650
    iget-object v0, p0, Lc8/Ie;->mTab:Lc8/Fe;

    if-eq p1, v0, :cond_0

    .line 1651
    iput-object p1, p0, Lc8/Ie;->mTab:Lc8/Fe;

    .line 1652
    invoke-virtual {p0}, Lc8/Ie;->update()V

    .line 1654
    :cond_0
    return-void
.end method

.method final update()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1662
    iget-object v3, p0, Lc8/Ie;->mTab:Lc8/Fe;

    .line 1663
    .local v3, "tab":Lc8/Fe;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lc8/Fe;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1664
    .local v0, "custom":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_a

    .line 1665
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1666
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 1667
    if-eqz v1, :cond_0

    .line 1668
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1670
    :cond_0
    invoke-virtual {p0, v0}, Lc8/Ie;->addView(Landroid/view/View;)V

    .line 1672
    :cond_1
    iput-object v0, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    .line 1673
    iget-object v7, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 1674
    iget-object v7, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    :cond_2
    iget-object v7, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 1677
    iget-object v7, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1678
    iget-object v7, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1681
    :cond_3
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    .line 1682
    iget-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1683
    iget-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Lc8/Ie;->mDefaultMaxLines:I

    .line 1685
    :cond_4
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lc8/Ie;->mCustomIconView:Landroid/widget/ImageView;

    .line 1696
    :goto_1
    iget-object v5, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_c

    .line 1698
    iget-object v5, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    .line 1699
    invoke-virtual {p0}, Lc8/Ie;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Lcom/youku/phone/R$layout;->design_layout_tab_icon:I

    .line 1700
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1701
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v6}, Lc8/Ie;->addView(Landroid/view/View;I)V

    .line 1702
    iput-object v2, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    .line 1704
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_5
    iget-object v5, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    .line 1705
    invoke-virtual {p0}, Lc8/Ie;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Lcom/youku/phone/R$layout;->design_layout_tab_text:I

    .line 1706
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1707
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Lc8/Ie;->addView(Landroid/view/View;)V

    .line 1708
    iput-object v4, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    .line 1709
    iget-object v5, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Lc8/Ie;->mDefaultMaxLines:I

    .line 1711
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget v7, v7, Lc8/Ke;->mTabTextAppearance:I

    invoke-static {v5, v7}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1712
    iget-object v5, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget-object v5, v5, Lc8/Ke;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_7

    .line 1713
    iget-object v5, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lc8/Ie;->this$0:Lc8/Ke;

    iget-object v7, v7, Lc8/Ke;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1715
    :cond_7
    iget-object v5, p0, Lc8/Ie;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lc8/Ie;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Lc8/Ie;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1724
    :cond_8
    :goto_2
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lc8/Fe;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Lc8/Ie;->setSelected(Z)V

    .line 1725
    return-void

    .end local v0    # "custom":Landroid/view/View;
    :cond_9
    move-object v0, v5

    .line 1663
    goto/16 :goto_0

    .line 1688
    .restart local v0    # "custom":Landroid/view/View;
    :cond_a
    iget-object v7, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    if-eqz v7, :cond_b

    .line 1689
    iget-object v7, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lc8/Ie;->removeView(Landroid/view/View;)V

    .line 1690
    iput-object v5, p0, Lc8/Ie;->mCustomView:Landroid/view/View;

    .line 1692
    :cond_b
    iput-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    .line 1693
    iput-object v5, p0, Lc8/Ie;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 1718
    :cond_c
    iget-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_d

    iget-object v5, p0, Lc8/Ie;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 1719
    :cond_d
    iget-object v5, p0, Lc8/Ie;->mCustomTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lc8/Ie;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Lc8/Ie;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_e
    move v5, v6

    .line 1724
    goto :goto_3
.end method
