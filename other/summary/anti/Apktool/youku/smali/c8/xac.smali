.class public Lc8/xac;
.super Ljava/lang/Object;


# instance fields
.field private a:Lc8/Tac;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lc8/Sac;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lc8/xac;->c:Landroid/app/Activity;

    if-nez v3, :cond_1

    const-string/jumbo v0, "context\u4e3a\u7a7a,\u6ca1\u6709getview?"

    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo v2, "AlibcWant"

    const-string/jumbo v3, "params is null"

    invoke-static {v2, v3}, Lc8/vac;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BCWant"

    const-string/jumbo v3, "addCart"

    const-string/jumbo v4, "220100"

    invoke-static {v2, v3, v4, v0}, Lc8/wac;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-object v3, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    const-string/jumbo v0, "rootview\u4e3a\u7a7a,\u6ca1\u6709getview?"

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lc8/Sac;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lc8/Sac;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v0, "base data\u4e3a\u7a7a"

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AlibcWant"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lc8/vac;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    invoke-virtual {v0}, Lc8/Tac;->b()V

    :cond_0
    iput-object v2, p0, Lc8/xac;->a:Lc8/Tac;

    iput-object v2, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    iput-object v2, p0, Lc8/xac;->c:Landroid/app/Activity;

    return-void
.end method

.method public getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v0, "AlibcWant"

    const-string/jumbo v1, "context is null"

    invoke-static {v0, v1}, Lc8/vac;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iput-object p1, p0, Lc8/xac;->c:Landroid/app/Activity;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc8/xac;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "alibc_want_addcart_layout"

    const-string/jumbo v2, "layout"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lc8/xac;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public removeAllData()V
    .locals 1

    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    invoke-virtual {v0}, Lc8/Tac;->a()V

    :cond_0
    return-void
.end method

.method public updateData(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)V
    .locals 3

    invoke-direct {p0, p1}, Lc8/xac;->a(Lc8/Sac;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    if-nez v0, :cond_1

    new-instance v0, Lc8/Tac;

    iget-object v1, p0, Lc8/xac;->c:Landroid/app/Activity;

    iget-object v2, p0, Lc8/xac;->b:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lc8/Tac;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    :cond_1
    iget-object v0, p0, Lc8/xac;->a:Lc8/Tac;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Tac;->a(Lc8/Sac;Ljava/util/HashMap;Lcom/alibaba/sdk/trade/component/cart/AlibcTkParams;)V

    goto :goto_0
.end method
