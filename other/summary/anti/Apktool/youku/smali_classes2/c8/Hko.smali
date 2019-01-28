.class public Lc8/Hko;
.super Landroid/content/BroadcastReceiver;
.source "PassportBroadCastReceiver.java"


# static fields
.field public static final ACTION_COOKIE_REFRESHED:Ljava/lang/String; = "passport_cookie_refreshed"

.field public static final ACTION_EXPIRE_LOGOUT:Ljava/lang/String; = "passport_expire_logout"

.field public static final ACTION_LOGIN_CANCEL:Ljava/lang/String; = "passport_login_cancel"

.field public static final ACTION_TOKEN_REFRESHED:Ljava/lang/String; = "passport_token_refreshed"

.field public static final ACTION_USER_LOGIN:Ljava/lang/String; = "passport_user_login"

.field public static final ACTION_USER_LOOUT:Ljava/lang/String; = "passport_user_logout"

.field public static final EXTRA_COOKIE:Ljava/lang/String; = "passport_cookie"

.field public static final EXTRA_STOKEN:Ljava/lang/String; = "passport_stoken"

.field public static final EXTRA_YTID:Ljava/lang/String; = "passport_ytid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "passport_user_login"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-static {}, Lc8/Gko;->onUserLogin()V

    .line 65
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "passport_user_logout"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-static {}, Lc8/Gko;->onUserLogout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "passport_expire_logout"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    invoke-static {}, Lc8/Gko;->onExpireLogout()V

    goto :goto_0

    .line 51
    :cond_3
    const-string/jumbo v5, "passport_token_refreshed"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    const-string/jumbo v5, "passport_stoken"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "stoken":Ljava/lang/String;
    const-string/jumbo v5, "passport_ytid"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "ytid":Ljava/lang/String;
    invoke-static {v3, v4}, Lc8/Gko;->onTokenRefreshed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v3    # "stoken":Ljava/lang/String;
    .end local v4    # "ytid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "passport_cookie_refreshed"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 56
    const-string/jumbo v5, "passport_cookie"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "cookie":Ljava/lang/String;
    invoke-static {v1}, Lc8/Gko;->onCookieRefreshed(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v1    # "cookie":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "passport_login_cancel"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-static {}, Lc8/Gko;->onLoginCancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
