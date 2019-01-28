.class public Lcom/uc/webview/export/internal/android/CookieManagerAndroid;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/ICookieManager;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# instance fields
.field private a:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 29
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acceptThirdPartyCookies(Lcom/uc/webview/export/WebView;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Landroid/webkit/CookieManager;->allowFileSchemeCookies()Z

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 65
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 58
    :cond_0
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 52
    :cond_0
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAcceptFileSchemeCookiesImpl(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method
