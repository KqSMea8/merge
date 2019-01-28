.class public abstract Lc8/pbo;
.super Lc8/obo;
.source "BaseStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected isEnableFailedRefresh:Z

.field protected page_fail_error_img:Landroid/widget/ImageView;

.field protected page_fail_text_sub_tips:Landroid/widget/TextView;

.field protected page_fail_text_tips:Landroid/widget/TextView;

.field protected page_load_fail_layout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/obo;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pbo;->isEnableFailedRefresh:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected getFailErrorImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getFailTxtSubTips()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getFailTxtTips()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getFailView()Landroid/view/View;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    return-object v0
.end method

.method abstract getPageLoadFailLayout()Landroid/view/ViewGroup;
.end method

.method getPageLoadingLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lc8/pbo;->rootView:Landroid/view/View;

    sget v1, Lcom/youku/phone/R$id;->page_loading_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected hideNothingUI()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method

.method protected isNothingUIShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method

.method public isShowLoadingLayout()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lc8/pbo;->getPageLoadingLayout()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "loading":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 135
    :cond_0
    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    invoke-super {p0, p1}, Lc8/obo;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lc8/pbo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lc8/pbo;->mContext:Landroid/app/Activity;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    invoke-super {p0}, Lc8/obo;->onDestroy()V

    .line 94
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onDestroyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    invoke-super {p0}, Lc8/obo;->onDestroyView()V

    .line 88
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onDetach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    invoke-super {p0}, Lc8/obo;->onDetach()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    invoke-super {p0}, Lc8/obo;->onResume()V

    .line 57
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    invoke-super {p0, p1}, Lc8/obo;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    invoke-super {p0}, Lc8/obo;->onStart()V

    .line 35
    invoke-virtual {p0}, Lc8/pbo;->getPageLoadFailLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 36
    .local v0, "failedLayout":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 37
    iput-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    .line 38
    sget v1, Lcom/youku/phone/R$id;->iv_no_result_1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    .line 39
    sget v1, Lcom/youku/phone/R$id;->tv_no_result:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    .line 40
    sget v1, Lcom/youku/phone/R$id;->tv_no_result_2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_0
    iget-object v1, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_1
    iget-object v1, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lc8/obo;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": onViewStateRestored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    invoke-super {p0, p1}, Lc8/obo;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method protected showConnectErrorUI(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->base_uikit_data_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_0
    return-void
.end method

.method protected showNoConnectUI()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->base_uikit_net_error_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    :cond_0
    return-void
.end method

.method protected showNothingSubTips(I)V
    .locals 1
    .param p1, "tipsRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-virtual {p0}, Lc8/pbo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/pbo;->showNothingTips(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected showNothingSubTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method

.method protected showNothingTips(I)V
    .locals 1
    .param p1, "tipsRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 254
    invoke-virtual {p0}, Lc8/pbo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/pbo;->showNothingTips(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected showNothingTips(II)V
    .locals 1
    .param p1, "tipsRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "subTipsRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-virtual {p0}, Lc8/pbo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/pbo;->showNothingTips(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected showNothingTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lc8/pbo;->page_fail_text_tips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method protected showNothingUI()V
    .locals 1

    .prologue
    .line 208
    sget v0, Lcom/youku/phone/R$string;->base_uikit_data_empty_tips:I

    invoke-virtual {p0, v0}, Lc8/pbo;->showNothingUI(I)V

    .line 209
    return-void
.end method

.method protected showNothingUI(I)V
    .locals 1
    .param p1, "tipsRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 217
    invoke-virtual {p0}, Lc8/pbo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/pbo;->showNothingUI(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method protected showNothingUI(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/pbo;->showNothingUI(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method protected showNothingUI(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "errorImage"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lc8/pbo;->page_load_fail_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 239
    iget-object v0, p0, Lc8/pbo;->page_fail_error_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lc8/pbo;->showNothingTips(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lc8/pbo;->page_fail_text_sub_tips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :cond_1
    return-void
.end method

.method public toggleLoadingLayout(Z)V
    .locals 1
    .param p1, "isShown"    # Z

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/pbo;->toggleLoadingLayout(ZLjava/lang/String;)V

    .line 143
    return-void
.end method

.method public toggleLoadingLayout(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isShown"    # Z
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0}, Lc8/pbo;->getPageLoadingLayout()Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "loading":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 148
    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    iget-object v2, p0, Lc8/pbo;->rootView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lc8/pbo;->rootView:Landroid/view/View;

    sget v3, Lcom/youku/phone/R$id;->loading_text_tips:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 153
    invoke-static {p2}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/youku/phone/R$string;->base_uikit_page_loading_tips:I

    invoke-virtual {p0, v2}, Lc8/pbo;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "tips":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 148
    .restart local p2    # "tips":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x8

    goto :goto_0
.end method
