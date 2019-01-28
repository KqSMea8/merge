.class public Lc8/sap;
.super Landroid/widget/LinearLayout;
.source "ResultEmptyView.java"


# instance fields
.field private resultEmptyMsg:Landroid/widget/TextView;

.field private tipIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lc8/sap;->tipIcon:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {p0, p1}, Lc8/sap;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lc8/sap;->tipIcon:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p0, p1}, Lc8/sap;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->search_result_noresult_emptyview:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/youku/phone/R$id;->txt_noresult_emptyview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    .line 32
    sget v1, Lcom/youku/phone/R$id;->img_noresult_emptyview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lc8/sap;->tipIcon:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/sap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setEmptyViewText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setEmptyViewTextNoData()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/sap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->channel_sub_no_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method

.method public setEmptyViewTextNoResult()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/sap;->resultEmptyMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/sap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->channel_sub_no_result:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setImageNoData(I)V
    .locals 1
    .param p1, "imgId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lc8/sap;->tipIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lc8/sap;->tipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :cond_0
    return-void
.end method
