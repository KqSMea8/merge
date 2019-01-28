.class public Lc8/eFb;
.super Ljava/lang/Object;


# static fields
.field private static g:Z


# instance fields
.field a:Lc8/hFb;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/eFb;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lc8/hFb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/eFb;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/eFb;->f:Ljava/lang/String;

    iput-object p1, p0, Lc8/eFb;->a:Lc8/hFb;

    return-void
.end method

.method public constructor <init>(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/eFb;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/eFb;->f:Ljava/lang/String;

    iput-object p1, p0, Lc8/eFb;->a:Lc8/hFb;

    iput-object p2, p0, Lc8/eFb;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/eFb;->c:Ljava/lang/String;

    iput-object p4, p0, Lc8/eFb;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\u2028"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "\u2028"

    const-string/jumbo v1, "\\u2028"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    :cond_0
    :goto_0
    const-string/jumbo v0, "\u2029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "\u2029"

    const-string/jumbo v1, "\\u2029"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    :cond_1
    :goto_1
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p2, "{}"

    :cond_1
    invoke-static {p2}, Lc8/eFb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lc8/hFb;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lc8/qFb;

    invoke-direct {v2, p0, v0}, Lc8/qFb;-><init>(Lc8/hFb;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AlibcJsCallbackContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return param is not a valid json!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AlibcJsCallbackContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callback error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/eFb;->evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/16 v3, 0xb

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-boolean v0, Lc8/eFb;->g:Z

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v2, Lc8/eFb;->g:Z

    invoke-static {p0, p1, p2}, Lc8/eFb;->evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v2, Lc8/eFb;->g:Z

    invoke-static {p0, p1, p2}, Lc8/eFb;->evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Alibc"

    const-string/jumbo v2, "evaluateJavascript"

    invoke-static {v1, v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "Alibc"

    const-string/jumbo v2, "evaluateJavascript"

    invoke-static {v1, v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fireEvent(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "window.AliBCBridge && window.AliBCBridge.fireEvent(\'%s\', \'%%s\', %s);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/eFb;->a(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public error(Lc8/fFb;)V
    .locals 5

    const-string/jumbo v0, "AlibcJsCallbackContext"

    const-string/jumbo v1, "call error "

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/eFb;->a:Lc8/hFb;

    const-string/jumbo v1, "javascript:window.AliBCBridge&&window.AliBCBridge.onFailure(%s,\'%%s\');"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/eFb;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/fFb;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/eFb;->a(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lc8/eFb;->a:Lc8/hFb;

    const-string/jumbo v1, "window.AliBCBridge && window.AliBCBridge.fireEvent(\'%s\', \'%%s\', %s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/eFb;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/eFb;->a(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWebview()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lc8/eFb;->a:Lc8/hFb;

    invoke-interface {v0}, Lc8/hFb;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public setNeedfireNativeEvent(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lc8/eFb;->f:Ljava/lang/String;

    iput-boolean p2, p0, Lc8/eFb;->e:Z

    const-string/jumbo v0, "AlibcJsCallbackContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedfireNativeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 1

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    invoke-virtual {v0}, Lc8/fFb;->setSuccess()V

    invoke-virtual {p0, v0}, Lc8/eFb;->success(Lc8/fFb;)V

    return-void
.end method

.method public success(Lc8/fFb;)V
    .locals 5

    iget-object v0, p0, Lc8/eFb;->a:Lc8/hFb;

    const-string/jumbo v1, "javascript:window.AliBCBridge&&window.AliBCBridge.onSuccess(%s,\'%%s\');"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/eFb;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/fFb;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/eFb;->a(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
