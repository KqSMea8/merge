.class public Lc8/Iqb;
.super Lc8/MXf;
.source "WXLocationModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private replace(Lc8/jwb;Ljava/lang/String;)V
    .locals 5
    .param p1, "weexPage"    # Lc8/jwb;
    .param p2, "bundleUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, ""

    .line 63
    .local v0, "renderUrl":Ljava/lang/String;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, "url":Landroid/net/Uri;
    const-string/jumbo v4, "_wx_tpl"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "wxTpl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 66
    move-object v0, v3

    .line 73
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1, p2, v0}, Lc8/jwb;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void

    .line 68
    :cond_2
    const-string/jumbo v4, "wh_weex"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "whWeex":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method protected findWeexPageFragment()Lc8/jwb;
    .locals 6

    .prologue
    .line 48
    iget-object v5, p0, Lc8/Iqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v5}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 50
    .local v4, "weexPage":Lc8/jwb;
    instance-of v5, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 51
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 52
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 53
    .local v3, "manager":Landroid/support/v4/app/FragmentManager;
    sget-object v5, Lc8/jwb;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 54
    .local v2, "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lc8/jwb;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 55
    check-cast v4, Lc8/jwb;

    .line 58
    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    return-object v4
.end method

.method public reload(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "force"    # Ljava/lang/Boolean;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 21
    iget-object v3, p0, Lc8/Iqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Lc8/Iqb;->findWeexPageFragment()Lc8/jwb;

    move-result-object v2

    .line 24
    .local v2, "weexPage":Lc8/jwb;
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v2}, Lc8/jwb;->reload()V

    goto :goto_0

    .line 26
    :cond_2
    instance-of v3, v0, Lc8/uqb;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 27
    check-cast v1, Lc8/uqb;

    .line 28
    .local v1, "location":Lc8/uqb;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lc8/uqb;->reload(Z)V

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    iget-object v3, p0, Lc8/Iqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 45
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lc8/Iqb;->findWeexPageFragment()Lc8/jwb;

    move-result-object v2

    .line 38
    .local v2, "weexPage":Lc8/jwb;
    if-eqz v2, :cond_2

    .line 39
    invoke-direct {p0, v2, p1}, Lc8/Iqb;->replace(Lc8/jwb;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    instance-of v3, v0, Lc8/uqb;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 41
    check-cast v1, Lc8/uqb;

    .line 42
    .local v1, "location":Lc8/uqb;
    invoke-interface {v1, p1}, Lc8/uqb;->replace(Ljava/lang/String;)V

    goto :goto_0
.end method
