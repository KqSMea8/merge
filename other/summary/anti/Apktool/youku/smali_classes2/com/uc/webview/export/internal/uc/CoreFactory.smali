.class public Lcom/uc/webview/export/internal/uc/CoreFactory;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;
    }
.end annotation


# static fields
.field public static Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field

.field public static sLazyUpdateCallback:Ljava/lang/Runnable;
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x271b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;-><init>()V

    :goto_0
    sput-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->p:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 295
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->q:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 3

    .prologue
    .line 299
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->r:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebResourceResponse;

    return-object v0
.end method

.method public static createWebView(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 4
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->h:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    goto :goto_0
.end method

.method public static getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->b:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    return-object v0
.end method

.method public static getCoreType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->o:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->c:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    return-object v0
.end method

.method public static getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 198
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->d:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object v0
.end method

.method public static initUCMobileWebKit(Landroid/content/Context;ZZ)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 4
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->j:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 235
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object v0
.end method

.method public static initUCMobileWebkitCoreSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->l:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->l:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->k:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static initUCMobileWebkitCoreSoEnv(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 4
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->n:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->n:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 277
    :cond_0
    const-string/jumbo v0, "ucm_dex_path"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    const-string/jumbo v1, "ucm_odex_path"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    const-string/jumbo v2, "ucm_corelib_path"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    const-string/jumbo v3, "ucm_private_data_dir_suffix"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    invoke-static {p0, v0, v1, v2, v3}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebkitCoreSoEx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static initUCMobileWebkitCoreSoEx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->m:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->m:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 264
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebkitCoreSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static j()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->a:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    return-object v0
.end method

.method public static k()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->e:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    return-object v0
.end method

.method public static l()Lcom/uc/webview/export/internal/interfaces/IWebStorage;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->f:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    return-object v0
.end method

.method public static m()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->g:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    return-object v0
.end method

.method public static n()Z
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    iget-object v0, v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;->i:Lcom/uc/webview/export/internal/utility/ReflectionUtil$BindingMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateLazy()V
    .locals 1
    .annotation build Lcom/uc/webview/export/annotations/Reflection;
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->Lazy:Lcom/uc/webview/export/internal/uc/CoreFactory$LazyClass;

    .line 174
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->sLazyUpdateCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/uc/webview/export/internal/uc/CoreFactory;->sLazyUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_0
    return-void
.end method
