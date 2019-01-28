.class public Lc8/cwb;
.super Ljava/lang/Object;
.source "WXErrorController.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mErrorText:Landroid/widget/TextView;

.field private mErrorView:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "container"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/cwb;->mContext:Landroid/app/Activity;

    .line 25
    sget v1, Lcom/youku/phone/R$id;->wx_fragment_error:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 26
    .local v0, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    .line 27
    sget v1, Lcom/youku/phone/R$id;->wa_common_error_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/cwb;->mErrorText:Landroid/widget/TextView;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lc8/cwb;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lc8/cwb;

    .prologue
    .line 13
    iget-object v0, p0, Lc8/cwb;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lc8/cwb;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setErrorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/cwb;->mErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lc8/cwb;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    .line 80
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    iput-object p1, p0, Lc8/cwb;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    new-instance v1, Lc8/bwb;

    invoke-direct {v1, p0}, Lc8/bwb;-><init>(Lc8/cwb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/cwb;->show(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/cwb;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local p1    # "errMsg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lc8/cwb;->setErrorText(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lc8/cwb;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    return-void

    .line 63
    .restart local p1    # "errMsg":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/youku/phone/R$string;->common_error_data:I

    invoke-direct {p0, v0}, Lc8/cwb;->getResourcesString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
