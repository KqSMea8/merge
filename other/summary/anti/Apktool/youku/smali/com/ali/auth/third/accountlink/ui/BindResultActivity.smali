.class public Lcom/ali/auth/third/accountlink/ui/BindResultActivity;
.super Lcom/ali/auth/third/ui/LoginActivity;
.source "BindResultActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ali/auth/third/ui/LoginActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "login_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 22
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 24
    :pswitch_0
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ibb"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lc8/Qfb;->showBind(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    invoke-virtual {v1, p0}, Lc8/Qfb;->unbind(Landroid/app/Activity;)V

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "ibb"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lc8/Qfb;->handleTrustLoginEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ali/auth/third/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const-string/jumbo v0, "login.LoginActivity"

    const-string/jumbo v1, "BindResultActivity"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
