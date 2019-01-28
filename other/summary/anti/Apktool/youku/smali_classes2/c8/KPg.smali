.class public Lc8/KPg;
.super Ljava/lang/Object;
.source "DebugSettings.java"


# static fields
.field public static final SCHEMA:Ljava/lang/String; = "ykdebug"

.field private static ctx:Landroid/content/Context;

.field private static fastSkip:Z

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lc8/KPg;->fastSkip:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doUpdate(Ljava/lang/String;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v5, 0x0

    sput-boolean v5, Lc8/KPg;->fastSkip:Z

    .line 29
    :try_start_0
    new-instance v4, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v4, p0}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, "sanitizer":Landroid/net/UrlQuerySanitizer;
    invoke-virtual {v4}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v3

    .line 31
    .local v3, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/net/UrlQuerySanitizer$ParameterValuePair;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 32
    sget-object v5, Lc8/KPg;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 33
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 34
    .local v2, "p":Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    const-string/jumbo v6, "DebugSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v6, v2, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "p":Landroid/net/UrlQuerySanitizer$ParameterValuePair;
    .end local v3    # "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/net/UrlQuerySanitizer$ParameterValuePair;>;"
    .end local v4    # "sanitizer":Landroid/net/UrlQuerySanitizer;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 37
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/net/UrlQuerySanitizer$ParameterValuePair;>;"
    .restart local v4    # "sanitizer":Landroid/net/UrlQuerySanitizer;
    :cond_1
    :try_start_1
    sget-object v5, Lc8/KPg;->ctx:Landroid/content/Context;

    const-string/jumbo v6, "debug-settings\u914d\u7f6e\u5df2\u66f4\u65b0, Enjoy!"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defVal"    # I

    .prologue
    .line 75
    sget-boolean v1, Lc8/KPg;->fastSkip:Z

    if-eqz v1, :cond_1

    .line 81
    .end local p1    # "defVal":I
    :cond_0
    :goto_0
    return p1

    .line 76
    .restart local p1    # "defVal":I
    :cond_1
    const-string/jumbo v1, ""

    invoke-static {p0, v1}, Lc8/KPg;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-boolean v0, Lc8/KPg;->fastSkip:Z

    if-eqz v0, :cond_1

    .line 63
    .end local p1    # "defVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defVal":Ljava/lang/String;
    :cond_1
    sget-object v0, Lc8/KPg;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/KPg;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v0, "arch.debug.settings"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    sput-object v0, Lc8/KPg;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/KPg;->fastSkip:Z

    .line 47
    sput-object p0, Lc8/KPg;->ctx:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "DebugSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fastSkip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lc8/KPg;->fastSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static update(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ykdebug"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/KPg;->update(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static update(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lc8/KPg;->doUpdate(Ljava/lang/String;)V

    .line 53
    return-void
.end method
