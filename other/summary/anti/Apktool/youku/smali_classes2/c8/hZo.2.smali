.class public Lc8/hZo;
.super Landroid/widget/PopupWindow;
.source "DownloadWatchView.java"


# instance fields
.field private guideText:Landroid/widget/TextView;

.field private guideView:Landroid/widget/ImageView;

.field public higth:I

.field private mGuideView:Landroid/view/View;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "showContent"    # Ljava/lang/String;
    .param p3, "RID"    # I
    .param p4, "type"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 35
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$layout;->detail_card_download_watch:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    .line 39
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    sget v4, Lcom/youku/phone/R$id;->subscribe_guide_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lc8/hZo;->guideText:Landroid/widget/TextView;

    .line 48
    const-string/jumbo v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/hZo;->guideText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lc8/hZo;->guideText:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_2
    if-ne p4, v7, :cond_4

    .line 52
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    sget v4, Lcom/youku/phone/R$id;->download_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    .line 58
    :goto_1
    iget-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "guide view height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    if-lez p3, :cond_3

    .line 62
    iget-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 66
    .local v2, "widthMeasure":I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 67
    .local v1, "higthMeasure":I
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 68
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lc8/hZo;->width:I

    .line 69
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lc8/hZo;->higth:I

    .line 74
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lc8/hZo;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, v8}, Lc8/hZo;->setWidth(I)V

    .line 78
    invoke-virtual {p0, v8}, Lc8/hZo;->setHeight(I)V

    .line 80
    invoke-virtual {p0, v6}, Lc8/hZo;->setFocusable(Z)V

    .line 81
    invoke-virtual {p0, v7}, Lc8/hZo;->setTouchable(Z)V

    .line 85
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 87
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v7}, Lc8/hZo;->setOutsideTouchable(Z)V

    .line 89
    invoke-virtual {p0, v0}, Lc8/hZo;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 53
    .end local v0    # "dw":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "higthMeasure":I
    .end local v2    # "widthMeasure":I
    :cond_4
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    .line 54
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    sget v4, Lcom/youku/phone/R$id;->downloading_tips:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    goto :goto_1

    .line 56
    :cond_5
    iget-object v3, p0, Lc8/hZo;->mGuideView:Landroid/view/View;

    sget v4, Lcom/youku/phone/R$id;->subscirbe_guide:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lc8/hZo;->guideView:Landroid/widget/ImageView;

    goto/16 :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 103
    return-void
.end method

.method public getHigthMeasure()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lc8/hZo;->higth:I

    return v0
.end method

.method public getWidthMeasure()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lc8/hZo;->width:I

    return v0
.end method
