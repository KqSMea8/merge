.class public Lc8/Lwe;
.super Ljava/lang/Object;
.source "AccessTokenKeeper.java"


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com_weibo_sdk_android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static readAccessToken(Landroid/content/Context;)Lc8/Owe;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 73
    :cond_0
    new-instance v1, Lc8/Owe;

    invoke-direct {v1}, Lc8/Owe;-><init>()V

    .line 74
    .local v1, "token":Lc8/Owe;
    const-string/jumbo v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "uid"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Owe;->setUid(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v2, "access_token"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Owe;->setToken(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v2, "refresh_token"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Owe;->setRefreshToken(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v2, "expires_in"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc8/Owe;->setExpiresTime(J)V

    goto :goto_0
.end method

.method public static refreshToken(Ljava/lang/String;Landroid/content/Context;Lc8/Exe;)V
    .locals 6
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lc8/Exe;

    .prologue
    .line 104
    invoke-static {p1}, Lc8/Lwe;->readAccessToken(Landroid/content/Context;)Lc8/Owe;

    move-result-object v2

    .line 105
    .local v2, "token":Lc8/Owe;
    if-nez v2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v0, "https://api.weibo.com/oauth2/access_token"

    .line 109
    .local v0, "REFRESH_TOKEN_URL":Ljava/lang/String;
    new-instance v1, Lc8/Fxe;

    invoke-direct {v1, p0}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "params":Lc8/Fxe;
    const-string/jumbo v3, "client_id"

    invoke-virtual {v1, v3, p0}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v3, "grant_type"

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v1, v3, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2}, Lc8/Owe;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v3, Lc8/wxe;

    invoke-direct {v3, p1}, Lc8/wxe;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "POST"

    new-instance v5, Lc8/Kwe;

    invoke-direct {v5, p1, p2}, Lc8/Kwe;-><init>(Landroid/content/Context;Lc8/Exe;)V

    invoke-virtual {v3, v0, v1, v4, v5}, Lc8/wxe;->requestAsync(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    goto :goto_0
.end method

.method public static writeAccessToken(Landroid/content/Context;Lc8/Owe;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lc8/Owe;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "uid"

    invoke-virtual {p1}, Lc8/Owe;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    const-string/jumbo v2, "access_token"

    invoke-virtual {p1}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string/jumbo v2, "refresh_token"

    invoke-virtual {p1}, Lc8/Owe;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string/jumbo v2, "expires_in"

    invoke-virtual {p1}, Lc8/Owe;->getExpiresTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
