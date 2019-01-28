.class public Lc8/aFb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CALL_EXECUTE:I = 0x0

.field public static final CLOSED:I = 0x4

.field public static final NO_METHOD:I = 0x2

.field public static final NO_PERMISSION:I = 0x3

.field private static a:Lc8/aFb;

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/aFb;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/aFb;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lc8/aFb;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)Lc8/dFb;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "bchybrid://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-instance v0, Lc8/dFb;

    invoke-direct {v0}, Lc8/dFb;-><init>()V

    const/16 v2, 0x3a

    const-string/jumbo v3, "bchybrid://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const-string/jumbo v3, "bchybrid://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/dFb;->objectName:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/dFb;->token:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/dFb;->methodName:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/dFb;->params:Ljava/lang/String;

    :goto_1
    iget-object v2, v0, Lc8/dFb;->objectName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lc8/dFb;->token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lc8/dFb;->methodName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/dFb;->methodName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lc8/aFb;Lc8/dFb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc8/aFb;->a(Lc8/dFb;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lc8/dFb;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string/jumbo v0, "callMethod-obj:%s method:%s param:%s sid:%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lc8/dFb;->objectName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lc8/dFb;->methodName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lc8/dFb;->params:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p1, Lc8/dFb;->token:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AlibcJsBridge"

    invoke-static {v1, v0}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc8/aFb;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/dFb;->webview:Lc8/hFb;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AlibcJsBridge"

    const-string/jumbo v1, "jsbridge is closed."

    invoke-static {v0, v1}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lc8/aFb;->startCall(ILc8/dFb;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lc8/aFb;->d:Z

    if-nez v0, :cond_3

    invoke-static {}, Lc8/cFb;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc8/cFb;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lc8/cFb;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/bFb;

    iget-object v2, p1, Lc8/dFb;->objectName:Ljava/lang/String;

    iget-object v3, p1, Lc8/dFb;->methodName:Ljava/lang/String;

    iget-object v4, p1, Lc8/dFb;->params:Ljava/lang/String;

    invoke-interface {v0, p2, v2, v3, v4}, Lc8/bFb;->apiAuthCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AlibcJsBridge"

    const-string/jumbo v1, "preprocessor call fail, callMethod cancel."

    invoke-static {v0, v1}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lc8/aFb;->startCall(ILc8/dFb;)V

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lc8/aFb;->aftercallMethod(Lc8/dFb;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aftercallMethod(Lc8/dFb;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lc8/dFb;->webview:Lc8/hFb;

    iget-object v1, p0, Lc8/dFb;->objectName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/hFb;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lc8/rFb;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AlibcJsBridge"

    const-string/jumbo v2, "call new method execute."

    invoke-static {v1, v2}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/dFb;->classinstance:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/aFb;->startCall(ILc8/dFb;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callMethod: Plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/dFb;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " didn\'t found, you should call WVPluginManager.registerPlugin first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lc8/aFb;->startCall(ILc8/dFb;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/aFb;
    .locals 2

    const-class v1, Lc8/aFb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/aFb;->a:Lc8/aFb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/aFb;

    invoke-direct {v0}, Lc8/aFb;-><init>()V

    sput-object v0, Lc8/aFb;->a:Lc8/aFb;

    :cond_0
    sget-object v0, Lc8/aFb;->a:Lc8/aFb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startCall(ILc8/dFb;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lc8/aFb;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public callMethod(Lc8/hFb;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callMethod: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc8/aFb;->e:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "AlibcJsBridge"

    const-string/jumbo v1, "jsbridge is not init."

    invoke-static {v0, v1}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lc8/aFb;->a(Ljava/lang/String;)Lc8/dFb;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url format error and call canceled. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lc8/dFb;->webview:Lc8/hFb;

    invoke-interface {p1}, Lc8/hFb;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/pFb;

    invoke-direct {v2, p0, v0, v1}, Lc8/pFb;-><init>(Lc8/aFb;Lc8/dFb;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lc8/pFb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/aFb;->e:Z

    return-void
.end method

.method public exCallMethod(Lc8/sFb;Lc8/dFb;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lc8/dFb;->objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lc8/dFb;->objectName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/sFb;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lc8/dFb;->classinstance:Ljava/lang/Object;

    iget-object v0, p2, Lc8/dFb;->classinstance:Ljava/lang/Object;

    instance-of v0, v0, Lc8/rFb;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlibcJsBridge"

    const-string/jumbo v1, "call new method execute."

    invoke-static {v0, v1}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lc8/aFb;->startCall(ILc8/dFb;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/dFb;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AlibcJsBridge"

    const-string/jumbo v2, "CallMethodContext is null, and do nothing."

    invoke-static {v0, v2}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v4, Lc8/eFb;

    iget-object v2, v0, Lc8/dFb;->webview:Lc8/hFb;

    iget-object v5, v0, Lc8/dFb;->token:Ljava/lang/String;

    iget-object v6, v0, Lc8/dFb;->objectName:Ljava/lang/String;

    iget-object v7, v0, Lc8/dFb;->methodName:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v7}, Lc8/eFb;-><init>(Lc8/hFb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lc8/dFb;->classinstance:Ljava/lang/Object;

    check-cast v1, Lc8/rFb;

    iget-object v5, v0, Lc8/dFb;->methodName:Ljava/lang/String;

    iget-object v2, v0, Lc8/dFb;->params:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "{}"

    :goto_1
    invoke-virtual {v1, v5, v2, v4}, Lc8/rFb;->execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AlibcJsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AlibcApiPlugin execute failed. method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lc8/dFb;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lc8/aFb;->startCall(ILc8/dFb;)V

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lc8/dFb;->params:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lc8/fFb;->RET_NO_METHOD:Lc8/fFb;

    invoke-virtual {v4, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    sget-object v0, Lc8/fFb;->RET_NO_PERMISSION:Lc8/fFb;

    invoke-virtual {v4, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    move v0, v3

    goto :goto_0

    :pswitch_4
    sget-object v0, Lc8/fFb;->RET_CLOSED:Lc8/fFb;

    invoke-virtual {v4, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/aFb;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lc8/aFb;->c:Z

    return-void
.end method

.method public skipPreprocess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/aFb;->d:Z

    return-void
.end method
