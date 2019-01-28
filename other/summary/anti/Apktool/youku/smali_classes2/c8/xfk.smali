.class public abstract Lc8/xfk;
.super Lc8/UVc;
.source "NewBaseCard.java"


# instance fields
.field protected context:Lc8/VVc;

.field public handler:Landroid/os/Handler;

.field protected loadingLayout:Landroid/view/View;

.field protected mCloseView:Landroid/view/View;

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected nextLoading:Landroid/view/View;

.field protected noResultView:Landroid/view/View;

.field protected noresultImageView:Landroid/widget/ImageView;

.field protected noresultTextView:Landroid/widget/TextView;

.field public state:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lc8/VVc;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Lc8/VVc;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/UVc;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xfk;->handler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lc8/xfk;->state:I

    .line 53
    iput-object p1, p0, Lc8/xfk;->context:Lc8/VVc;

    .line 54
    iput-object p2, p0, Lc8/xfk;->handler:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method protected closeLoading()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    return-void
.end method

.method protected closeNextLoading()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method protected closeNoResultView()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public final getDetailDataManager()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/xfk;->context:Lc8/VVc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/xfk;->context:Lc8/VVc;

    invoke-interface {v0}, Lc8/VVc;->getDetailManager()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/xfk;->view:Landroid/view/View;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFirstStart"    # Z

    .prologue
    .line 58
    sget v0, Lcom/youku/phone/R$id;->loadingview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    .line 59
    sget v0, Lcom/youku/phone/R$id;->next_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    .line 60
    sget v0, Lcom/youku/phone/R$id;->layout_no_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    .line 61
    sget v0, Lcom/youku/phone/R$id;->tv_no_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/xfk;->noresultTextView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/youku/phone/R$id;->iv_no_result:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lc8/xfk;->noresultImageView:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/youku/phone/R$id;->title_bar_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/xfk;->mTitleTextView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/youku/phone/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/xfk;->mCloseView:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lc8/xfk;->setCloseButton()V

    .line 66
    return-void
.end method

.method public isLand()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/xfk;->context:Lc8/VVc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xfk;->context:Lc8/VVc;

    invoke-interface {v0}, Lc8/VVc;->isLandLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    .line 151
    iput-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    .line 152
    iput-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    .line 153
    iput-object v0, p0, Lc8/xfk;->noresultTextView:Landroid/widget/TextView;

    .line 154
    return-void
.end method

.method public onNewIntent(Ljava/lang/String;Lcom/youku/phone/detail/card/CardIntent;)V
    .locals 0
    .param p1, "cation"    # Ljava/lang/String;
    .param p2, "cardIntent"    # Lcom/youku/phone/detail/card/CardIntent;

    .prologue
    .line 160
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected setCloseButton()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lc8/xfk;->mCloseView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/xfk;->mCloseView:Landroid/view/View;

    new-instance v1, Lc8/wfk;

    invoke-direct {v1, p0}, Lc8/wfk;-><init>(Lc8/xfk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 76
    return-void
.end method

.method protected setTitleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lc8/xfk;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lc8/xfk;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected showLoading()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/xfk;->loadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected showNextLoading()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lc8/xfk;->nextLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method

.method protected showNoResultView()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lc8/xfk;->noResultView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method
