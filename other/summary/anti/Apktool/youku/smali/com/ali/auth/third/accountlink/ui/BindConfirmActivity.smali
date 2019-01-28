.class public Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BindConfirmActivity.java"


# static fields
.field public static final TBOPEN_AGREEMENT:I = 0x3

.field public static final TBOPEN_BIND:I = 0x2


# instance fields
.field private mAgreementFragment:Lc8/dgb;

.field private mBindFragment:Lc8/igb;

.field private mCurrentFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addFragment(I)V
    .locals 4
    .param p1, "pageName"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 74
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 77
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 78
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_3

    .line 94
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    sget v3, Lcom/youku/phone/R$id;->aliuser_auth_content:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 96
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 99
    :cond_0
    iput-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 113
    :goto_1
    return-void

    .line 80
    :pswitch_0
    iget-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mAgreementFragment:Lc8/dgb;

    if-nez v3, :cond_1

    .line 81
    new-instance v3, Lc8/dgb;

    invoke-direct {v3}, Lc8/dgb;-><init>()V

    iput-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mAgreementFragment:Lc8/dgb;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mAgreementFragment:Lc8/dgb;

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    if-nez v3, :cond_2

    .line 87
    invoke-static {}, Lc8/igb;->newInstance()Lc8/igb;

    move-result-object v3

    iput-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    goto :goto_0

    .line 104
    :cond_3
    iget-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 107
    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 109
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 112
    :cond_4
    iput-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 108
    :cond_5
    sget v3, Lcom/youku/phone/R$id;->aliuser_auth_content:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->addFragment(I)V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/youku/phone/R$layout;->aliauth_activity_auth:I

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->init()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 55
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 56
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 58
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 61
    :cond_0
    iput-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    .line 62
    iput-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mAgreementFragment:Lc8/dgb;

    .line 63
    iput-object v3, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 65
    sput-object v3, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 66
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mAgreementFragment:Lc8/dgb;

    if-ne v0, v1, :cond_0

    .line 121
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->addFragment(I)V

    .line 122
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->mBindFragment:Lc8/igb;

    invoke-virtual {v0}, Lc8/igb;->onBackPressed()V

    .line 127
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 45
    return-void
.end method
