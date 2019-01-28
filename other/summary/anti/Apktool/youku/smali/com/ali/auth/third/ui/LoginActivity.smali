.class public Lcom/ali/auth/third/ui/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "login.LoginActivity"


# instance fields
.field hiddenLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "login_type"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 81
    sget-object v4, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-virtual {v4, p0}, Lc8/eib;->showLogin(Landroid/app/Activity;)V

    .line 85
    :goto_0
    return-void

    .line 68
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "params"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "params":Ljava/lang/String;
    const/4 v1, 0x0

    .line 70
    .local v1, "paramMsp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "paramJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lc8/Vhb;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 75
    .end local v0    # "paramJson":Lorg/json/JSONObject;
    :cond_0
    sget-object v4, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-virtual {v4, p0, v1}, Lc8/eib;->goQrCodeLogin(Landroid/app/Activity;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "paramMsp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "params":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 97
    const-string/jumbo v0, "login.LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    sget-object v0, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 105
    invoke-static {p0}, Lc8/mjb;->setActivity(Landroid/app/Activity;)V

    .line 107
    :cond_1
    invoke-static {p1, p2, p3}, Lc8/mjb;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    .line 32
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ali/auth/third/ui/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 35
    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lc8/Zib;

    invoke-direct {v1, p0}, Lc8/Zib;-><init>(Lcom/ali/auth/third/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 49
    iget-object v0, p0, Lcom/ali/auth/third/ui/LoginActivity;->hiddenLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 52
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string/jumbo v0, "login.LoginActivity"

    const-string/jumbo v1, "static field null"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 55
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {p0}, Lc8/mjb;->setActivity(Landroid/app/Activity;)V

    .line 58
    const-string/jumbo v0, "login.LoginActivity"

    const-string/jumbo v1, "before mtop call showLogin"

    invoke-static {v0, v1}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->auth()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    invoke-static {}, Lc8/Bgb;->checkServiceValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/ali/auth/third/ui/LoginActivity;->finish()V

    .line 93
    :cond_0
    return-void
.end method
