.class public Lc8/Gnb;
.super Ljava/lang/Object;
.source "ALPSPManager.java"


# static fields
.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lc8/Ymb;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "AlibcLinkPartner"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/Gnb;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string/jumbo v1, "ALPSPManager"

    const-string/jumbo v2, "getVal"

    const-string/jumbo v3, "key is null"

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local p1    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 37
    .restart local p1    # "defaultVal":Ljava/lang/String;
    :cond_0
    sget-object v1, Lc8/Gnb;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "val":Ljava/lang/String;
    move-object p1, v0

    .line 39
    goto :goto_0
.end method

.method public static removeVal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_0

    .line 45
    sget-object v1, Lc8/Gnb;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static saveVal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 19
    :cond_0
    const-string/jumbo v1, "ALPSPManager"

    const-string/jumbo v2, "saveVal"

    const-string/jumbo v3, "key/val is null"

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1

    .line 23
    :cond_1
    sget-object v1, Lc8/Gnb;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    const/4 v1, 0x1

    goto :goto_0
.end method
