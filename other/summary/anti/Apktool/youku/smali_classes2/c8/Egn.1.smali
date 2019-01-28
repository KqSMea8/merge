.class public Lc8/Egn;
.super Ljava/lang/Object;
.source "UserSettings.java"


# static fields
.field static final KEY_PRIVATE_COOKIE:Ljava/lang/String; = "private.credential.cookie"

.field static final KEY_PRIVATE_COOKIE_2:Ljava/lang/String; = "private.credential.cookie.2"

.field static final KEY_PRIVATE_CREDENTIAL_UPDATE_AT:Ljava/lang/String; = "private.crendential.update.at"

.field static final KEY_PRIVATE_STOKEN:Ljava/lang/String; = "private.credential.stoken"

.field static final KEY_PRIVATE_STOKEN_2:Ljava/lang/String; = "private.credential.stoken.2"

.field static final KEY_PRIVATE_YKTK:Ljava/lang/String; = "private.credential.yktk"

.field public static final KEY_SCREEN_AWAKE_ENABLED:Ljava/lang/String; = "screen.awake.enabled"

.field public static final KEY_TASK_FINISH_SOUND:Ljava/lang/String; = "task.finish.sound"

.field private static final NS_USER_SETTINGS:Ljava/lang/String; = "download.user.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "deflt"    # Z

    .prologue
    .line 26
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "deflt"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isScreenAwakeEnabled()Z
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "screen.awake.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Egn;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTaskFinishSoundEnabled()Z
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "task.finish.sound"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Egn;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 30
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 42
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public static setScreenAwakeEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 62
    const-string/jumbo v0, "screen.awake.enabled"

    invoke-static {v0, p0}, Lc8/Egn;->setBoolean(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v1, "download.user.settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setTaskFinishSoundEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 54
    const-string/jumbo v0, "task.finish.sound"

    invoke-static {v0, p0}, Lc8/Egn;->setBoolean(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method
