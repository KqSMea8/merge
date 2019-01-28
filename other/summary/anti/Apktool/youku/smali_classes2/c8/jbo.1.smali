.class public abstract Lc8/jbo;
.super Lc8/IEn;
.source "BasePlanetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/IEn;-><init>()V

    return-void
.end method

.method private initFragment()V
    .locals 6

    .prologue
    .line 33
    invoke-virtual {p0}, Lc8/jbo;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 34
    .local v3, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 36
    .local v4, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lc8/jbo;->getBusinessFragment()Lc8/obo;

    move-result-object v0

    .line 38
    .local v0, "baseComFragment":Lc8/obo;
    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lc8/jbo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 41
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0, v1}, Lc8/obo;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    sget v5, Lcom/youku/phone/R$id;->baseuikit_fragment_container:I

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    return-void

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract getBusinessFragment()Lc8/obo;
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/youku/phone/R$layout;->baseuikit_activity_common_page:I

    return v0
.end method

.method public abstract getPageSPMCode()Ljava/lang/String;
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x400

    .line 22
    invoke-super {p0, p1}, Lc8/IEn;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lc8/jbo;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lc8/jbo;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lc8/jbo;->getContentLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/jbo;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lc8/jbo;->initFragment()V

    .line 30
    return-void
.end method
