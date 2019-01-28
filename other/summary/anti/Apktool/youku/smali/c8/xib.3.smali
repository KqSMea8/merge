.class public Lc8/xib;
.super Lc8/ojb;
.source "LoginActivityResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "login"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lc8/ojb;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/xib;Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V
    .locals 0
    .param p0, "x0"    # Lc8/xib;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lc8/xgb;
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    return-void
.end method

.method static synthetic access$100(Lc8/xib;Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V
    .locals 0
    .param p0, "x0"    # Lc8/xib;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lc8/xgb;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    return-void
.end method

.method private handleCheck(Landroid/content/Intent;Lc8/xgb;)V
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 122
    const-string/jumbo v3, "login"

    const-string/jumbo v4, "handleCheck"

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object v2, p2

    .line 125
    .local v2, "trustLoginCallback":Lc8/xgb;
    sget-object v1, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 127
    .local v1, "savedActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 128
    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    sget-object v3, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v4, Lc8/sib;

    invoke-direct {v4, p0, v1, v2}, Lc8/sib;-><init>(Lc8/xib;Ljava/lang/ref/WeakReference;Lc8/xgb;)V

    invoke-interface {v3, v4}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 176
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lc8/Fib;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lc8/vib;

    invoke-direct {v4, p0, v1, v2}, Lc8/vib;-><init>(Lc8/xib;Ljava/lang/ref/WeakReference;Lc8/xgb;)V

    invoke-direct {v0, v3, v4}, Lc8/Fib;-><init>(Landroid/app/Activity;Lc8/xgb;)V

    .line 164
    .local v0, "loginByIVTokenTask":Lc8/Fib;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "token"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "scene"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "aliusersdk_h5querystring"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lc8/Fib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 166
    .end local v0    # "loginByIVTokenTask":Lc8/Fib;
    :cond_1
    sget-object v3, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v4, Lc8/wib;

    invoke-direct {v4, p0, v1, v2}, Lc8/wib;-><init>(Lc8/xib;Ljava/lang/ref/WeakReference;Lc8/xgb;)V

    invoke-interface {v3, v4}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "loginCallback"    # Lc8/xgb;
    .param p4, "errorCode"    # I

    .prologue
    const/16 v10, 0x2714

    const/16 v9, 0x2713

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 198
    const-string/jumbo v4, "login"

    const-string/jumbo v5, "onLoginFailure "

    invoke-static {v4, v5}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz p3, :cond_0

    .line 200
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p4, v4}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v1

    .line 201
    .local v1, "errorMessage":Lc8/Mgb;
    iget v4, v1, Lc8/Mgb;->code:I

    iget-object v5, v1, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 202
    sget-object v4, Lc8/oib;->E_IV_LOGIN_FAILURE:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    if-ne p4, v9, :cond_4

    .line 205
    const-class v4, Lc8/vhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vhb;

    sget-object v5, Lc8/oib;->E_H5_LOGIN_CANCEL:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    .end local v1    # "errorMessage":Lc8/Mgb;
    :cond_0
    :goto_0
    sget-object v4, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v4, :cond_1

    .line 229
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p4, v4}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v1

    .line 230
    .restart local v1    # "errorMessage":Lc8/Mgb;
    sget-object v4, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    iget v5, v1, Lc8/Mgb;->code:I

    iget-object v6, v1, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 233
    .end local v1    # "errorMessage":Lc8/Mgb;
    :cond_1
    if-eq p4, v9, :cond_2

    if-ne p4, v10, :cond_9

    .line 234
    :cond_2
    sget-object v4, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_CANCEL:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v4}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 239
    :goto_1
    if-eqz p1, :cond_3

    instance-of v4, p1, Lcom/ali/auth/third/ui/LoginActivity;

    if-eqz v4, :cond_3

    .line 240
    sput-object v7, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 241
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 243
    :cond_3
    return-void

    .line 206
    .restart local v1    # "errorMessage":Lc8/Mgb;
    :cond_4
    if-ne p4, v10, :cond_5

    .line 207
    const-class v4, Lc8/vhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vhb;

    sget-object v5, Lc8/oib;->E_TB_LOGIN_CANCEL:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 208
    :cond_5
    const/16 v4, 0x2715

    if-ne p4, v4, :cond_7

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v2, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, v1, Lc8/Mgb;->code:I

    .line 211
    .local v0, "code":I
    iget-object v3, v1, Lc8/Mgb;->message:Ljava/lang/String;

    .line 212
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v4, "code"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 214
    const-string/jumbo v4, "message"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_6
    const-class v4, Lc8/vhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vhb;

    sget-object v5, Lc8/oib;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 217
    .end local v0    # "code":I
    .end local v2    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "message":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 218
    .restart local v2    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, v1, Lc8/Mgb;->code:I

    .line 219
    .restart local v0    # "code":I
    iget-object v3, v1, Lc8/Mgb;->message:Ljava/lang/String;

    .line 220
    .restart local v3    # "message":Ljava/lang/String;
    const-string/jumbo v4, "code"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 222
    const-string/jumbo v4, "message"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_8
    const-class v4, Lc8/vhb;

    invoke-static {v4}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vhb;

    sget-object v5, Lc8/oib;->E_H5_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "code":I
    .end local v1    # "errorMessage":Lc8/Mgb;
    .end local v2    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "message":Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v4}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    goto/16 :goto_1
.end method

.method private onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "loginCallback"    # Lc8/xgb;

    .prologue
    const/4 v2, 0x0

    .line 180
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "onLoginSuccess "

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz p3, :cond_0

    .line 182
    sget-object v0, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v0}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v0

    invoke-interface {p3, v0}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 183
    const-class v0, Lc8/vhb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vhb;

    sget-object v1, Lc8/oib;->E_H5_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 188
    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 189
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/ali/auth/third/ui/LoginActivity;

    if-eqz v0, :cond_2

    .line 190
    sput-object v2, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 192
    sput-object v2, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 194
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCallbackContext(IILandroid/content/Intent;Landroid/app/Activity;Ljava/util/Map;Landroid/webkit/WebView;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "webview"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/16 v5, 0x2713

    .line 47
    const-string/jumbo v3, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallbackContext requestCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " resultCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " authCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_1

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 50
    sget-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v1, Lc8/xgb;

    .line 53
    .local v1, "loginCallback":Lc8/xgb;
    sget v2, Lc8/nib;->OPEN_H5_LOGIN:I

    if-ne p1, v2, :cond_4

    if-eqz v1, :cond_4

    .line 55
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-ne p2, v2, :cond_2

    .line 56
    const-string/jumbo v2, "E_H5_LOGIN_SUCCESS"

    invoke-direct {p0, p4, v2, v1}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 47
    .end local v1    # "loginCallback":Lc8/xgb;
    :cond_1
    const-string/jumbo v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 57
    .restart local v1    # "loginCallback":Lc8/xgb;
    :cond_2
    sget-object v2, Lc8/Wgb;->IGNORE:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-eq p2, v2, :cond_0

    .line 60
    sget-object v2, Lc8/Wgb;->CHECK:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-ne p2, v2, :cond_3

    .line 61
    invoke-direct {p0, p3, v1}, Lc8/xib;->handleCheck(Landroid/content/Intent;Lc8/xgb;)V

    goto :goto_1

    .line 65
    :cond_3
    const-string/jumbo v2, "E_H5_CANCEL_FAILURE"

    invoke-direct {p0, p4, v2, v1, v5}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto :goto_1

    .line 68
    :cond_4
    sget v2, Lc8/nib;->OPEN_TAOBAO:I

    if-ne p1, v2, :cond_8

    if-eqz v1, :cond_8

    .line 69
    const-class v2, Lc8/vhb;

    invoke-static {v2}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vhb;

    const-string/jumbo v3, "AUTH_TAOBAO"

    invoke-interface {v2, v3, v6}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    const/4 v2, -0x1

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    .line 72
    new-instance v0, Lc8/Cib;

    sget-object v2, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Lc8/Cib;-><init>(Landroid/app/Activity;Lc8/xgb;)V

    .line 75
    .local v0, "loginAfterOpenTb":Lc8/Cib;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lc8/Cib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 76
    .end local v0    # "loginAfterOpenTb":Lc8/Cib;
    :cond_5
    if-nez p2, :cond_6

    .line 78
    const-string/jumbo v2, "E_TB_LOGIN_CANCEL"

    const/16 v3, 0x2714

    invoke-direct {p0, p4, v2, v1, v3}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto :goto_1

    .line 80
    :cond_6
    const-string/jumbo v3, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result from taobao : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_7

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "E_TB_LOGIN_FAILURE"

    const/16 v3, 0x2715

    invoke-direct {p0, p4, v2, v1, v3}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto/16 :goto_1

    .line 80
    :cond_7
    const-string/jumbo v2, "result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 85
    :cond_8
    sget v2, Lc8/nib;->OPEN_QR_LOGIN:I

    if-ne p1, v2, :cond_a

    if-eqz v1, :cond_a

    .line 87
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-ne p2, v2, :cond_9

    .line 88
    const-string/jumbo v2, "E_QR_LOGIN_SUCCESS"

    invoke-direct {p0, p4, v2, v1}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    goto/16 :goto_1

    .line 91
    :cond_9
    const-string/jumbo v2, "E_QR_CANCEL_FAILURE"

    invoke-direct {p0, p4, v2, v1, v5}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto/16 :goto_1

    .line 94
    :cond_a
    sget v2, Lc8/nib;->OPEN_QR_LOGIN_CONFIRM:I

    if-ne p1, v2, :cond_c

    if-eqz v1, :cond_c

    .line 96
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-ne p2, v2, :cond_b

    .line 97
    const-string/jumbo v2, "E_QR_LOGIN_CONFIRM_SUCCESS"

    invoke-direct {p0, p4, v2, v1}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    goto/16 :goto_1

    .line 100
    :cond_b
    const-string/jumbo v2, "E_QR_LOGIN_CONFIRM_CANCEL"

    invoke-direct {p0, p4, v2, v1, v5}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto/16 :goto_1

    .line 103
    :cond_c
    sget v2, Lc8/nib;->OPEN_DOUBLE_CHECK:I

    if-ne p1, v2, :cond_d

    .line 104
    invoke-direct {p0, p3, v1}, Lc8/xib;->handleCheck(Landroid/content/Intent;Lc8/xgb;)V

    goto/16 :goto_1

    .line 106
    :cond_d
    sget v2, Lc8/nib;->OPEN_H5_UNBIND:I

    if-ne p1, v2, :cond_0

    .line 107
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v2, v2, Lc8/Wgb;->code:I

    if-ne p2, v2, :cond_e

    .line 108
    const-string/jumbo v2, "E_H5_UNBIND_SUCCESS"

    invoke-direct {p0, p4, v2, v1}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    .line 112
    :goto_3
    sput-object v6, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    goto/16 :goto_1

    .line 110
    :cond_e
    const-string/jumbo v2, "E_H5_UNBIND_FAILURE"

    invoke-direct {p0, p4, v2, v1, v5}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto :goto_3
.end method

.method protected onTaeSDKActivity(IILandroid/content/Intent;Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;Ljava/util/Map;Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "activity"    # Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
    .param p6, "webview"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    const/16 v4, 0x2713

    const/4 v5, 0x0

    .line 248
    const-string/jumbo v2, "login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTaeSDKActivity requestCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " resultCode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " authCode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    .line 251
    .local v0, "loginCallback":Lc8/xgb;
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 252
    sget v1, Lc8/nib;->OPEN_H5_LOGIN:I

    if-ne p1, v1, :cond_3

    .line 253
    sget-object v1, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    if-ne p2, v1, :cond_2

    .line 254
    invoke-virtual {p6}, Landroid/webkit/WebView;->reload()V

    .line 278
    :cond_0
    :goto_1
    return-void

    .line 248
    .end local v0    # "loginCallback":Lc8/xgb;
    :cond_1
    const-string/jumbo v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 256
    .restart local v0    # "loginCallback":Lc8/xgb;
    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->setResult(Lc8/Wgb;)V

    goto :goto_1

    .line 258
    :cond_3
    sget v1, Lc8/nib;->OPEN_TAOBAO:I

    if-ne p1, v1, :cond_6

    .line 259
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 260
    new-instance v1, Lc8/Mib;

    invoke-direct {v1, p4, p6}, Lc8/Mib;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "result"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lc8/Mib;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 261
    :cond_4
    if-nez p2, :cond_5

    .line 262
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->setResult(Lc8/Wgb;)V

    goto :goto_1

    .line 264
    :cond_5
    const-string/jumbo v1, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "taobao return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-virtual {v1, p4}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    goto :goto_1

    .line 267
    :cond_6
    sget v1, Lc8/nib;->OPEN_H5_UNBIND:I

    if-ne p1, v1, :cond_0

    .line 268
    sget-object v1, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    iget v1, v1, Lc8/Wgb;->code:I

    if-ne p2, v1, :cond_7

    .line 269
    const-string/jumbo v1, "E_H5_UNBIND_SUCCESS"

    invoke-direct {p0, p4, v1, v0}, Lc8/xib;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    .line 273
    :goto_2
    const/4 v1, 0x0

    sput-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    goto :goto_1

    .line 271
    :cond_7
    const-string/jumbo v1, "E_H5_UNBIND_FAILURE"

    invoke-direct {p0, p4, v1, v0, v4}, Lc8/xib;->onLoginFailure(Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    goto :goto_2
.end method
