.class public Lc8/Ndg;
.super Lc8/MXf;
.source "WXLocalModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private getLanguageTags()Ljava/lang/String;
    .locals 7

    .prologue
    .line 54
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 55
    .local v0, "application":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 57
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 59
    .local v1, "configuration":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1

    .line 60
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    .line 62
    .local v3, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    .line 72
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "localeList":Landroid/os/LocaleList;
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 64
    .restart local v1    # "configuration":Landroid/content/res/Configuration;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 65
    .local v2, "local":Ljava/util/Locale;
    if-eqz v2, :cond_1

    .line 66
    invoke-direct {p0, v2}, Lc8/Ndg;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 72
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "local":Ljava/util/Locale;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method private toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 76
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 90
    :goto_0
    return-object v4

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getLanguage(Lc8/EWf;)V
    .locals 1
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lc8/Ndg;->getLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public getLanguages(Lc8/EWf;)V
    .locals 2
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lc8/Ndg;->getLanguageTags()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
