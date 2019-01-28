.class public Lc8/Kyb;
.super Ljava/lang/Object;
.source "WXUriUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleUTPageNameScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;

    .prologue
    .line 22
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    const-string/jumbo p0, "default"

    .line 37
    :goto_0
    return-object p0

    .line 27
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 28
    .local v2, "pageNameUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 30
    .local v1, "pageNameBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "^(/|://|:/|//)"

    const-string/jumbo v5, ""

    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 34
    .end local v1    # "pageNameBuilder":Landroid/net/Uri$Builder;
    .end local v2    # "pageNameUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "pageNameError"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
