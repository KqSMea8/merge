.class public Lc8/iap;
.super Landroid/widget/LinearLayout;
.source "NoResultEmptyView.java"


# instance fields
.field private txt_noresult_emptyview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0, p1}, Lc8/iap;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, p1}, Lc8/iap;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Lc8/iap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$layout;->search_result_noresult_emptyview:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/youku/phone/R$id;->txt_noresult_emptyview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/iap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setEmptyViewText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setEmptyViewTextNoData()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lc8/iap;->txt_noresult_emptyview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc8/iap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$string;->havebuy_no_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_0
    return-void
.end method
