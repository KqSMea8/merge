.class public Lc8/vbo;
.super Ljava/lang/Object;
.source "DefaultStateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lc8/Abo;


# instance fields
.field private mContainerView:Landroid/view/View;

.field private mFailView:Landroid/view/View;

.field public mIvCover:Landroid/widget/ImageView;

.field public mListener:Lc8/zbo;

.field private mLoadingView:Landroid/view/View;

.field public mTxtSubTips:Landroid/widget/TextView;

.field public mtxtTips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachListener(Lc8/zbo;)V
    .locals 0
    .param p1, "l"    # Lc8/zbo;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/vbo;->mListener:Lc8/zbo;

    .line 87
    return-void
.end method

.method public hideView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 51
    iget-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lc8/vbo;->mListener:Lc8/zbo;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lc8/vbo;->mListener:Lc8/zbo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/zbo;->onStateViewClick(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget v1, Lcom/youku/phone/R$layout;->baseuikit_default_state_view:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    .line 39
    sget v1, Lcom/youku/phone/R$id;->page_load_fail_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    .line 40
    sget v1, Lcom/youku/phone/R$id;->page_loading_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    .line 41
    sget v1, Lcom/youku/phone/R$id;->tv_no_result:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/vbo;->mtxtTips:Landroid/widget/TextView;

    .line 42
    sget v1, Lcom/youku/phone/R$id;->tv_no_result_2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/vbo;->mTxtSubTips:Landroid/widget/TextView;

    .line 43
    sget v1, Lcom/youku/phone/R$id;->iv_no_result_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lc8/vbo;->mIvCover:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lc8/vbo;->mTxtSubTips:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v0
.end method

.method public showEmptyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public showErrorView(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public showNoConnectView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lc8/vbo;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lc8/vbo;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lc8/vbo;->mFailView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method
