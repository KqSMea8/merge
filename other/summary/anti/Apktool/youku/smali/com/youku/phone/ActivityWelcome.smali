.class public Lcom/youku/phone/ActivityWelcome;
.super Landroid/app/Activity;
.source "ActivityWelcome.java"


# static fields
.field private static final GOOGLE_PID:Ljava/lang/String; = "a1c0f66d02e2a816"

.field private static final PERMISSION_REQUEST:I = 0x110

.field private static final START_SETTING:I = 0x11

.field private static final TAG:Ljava/lang/String; = "ActivityWelcome"


# instance fields
.field private NEED_PERMISSIONS:[Ljava/lang/String;

.field private hasRequestedPermission:Z

.field private mAlertHandler:Lc8/Ubn;

.field private mDialog:Lc8/ULj;

.field private mRequestHandler:Lc8/Wbn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/youku/phone/ActivityWelcome;->hasRequestedPermission:Z

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/youku/phone/ActivityWelcome;->NEED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/youku/phone/ActivityWelcome;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/ActivityWelcome;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/phone/ActivityWelcome;->killAllProcesses(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/youku/phone/ActivityWelcome;)Lc8/ULj;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/ActivityWelcome;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/youku/phone/ActivityWelcome;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/ActivityWelcome;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->checkPermissionBeforeJump()V

    return-void
.end method

.method private alibabaPagePVStatics()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v1

    const-string/jumbo v2, "ActivityWelcome"

    invoke-virtual {v1, p0, v2, v0}, Lc8/JWc;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 286
    return-void
.end method

.method private checkPermissionBeforeJump()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->NEED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lc8/Zbn;->isGranted(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-boolean v0, p0, Lcom/youku/phone/ActivityWelcome;->hasRequestedPermission:Z

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x110

    iget-object v1, p0, Lcom/youku/phone/ActivityWelcome;->NEED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lc8/Zbn;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Lc8/Wbn;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mRequestHandler:Lc8/Wbn;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/ActivityWelcome;->hasRequestedPermission:Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->jumpToHome()V

    goto :goto_0
.end method

.method private doAlipayWallerLogin(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string/jumbo v0, "0"

    sput-object v0, Lc8/tin;->loginSource:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "1"

    sput-object v0, Lc8/tin;->loginType:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "4"

    sput-object v0, Lc8/tin;->loginPath:Ljava/lang/String;

    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string/jumbo v0, "alipay_user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VLj;->alipay_user_id:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "auth_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VLj;->auth_code:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VLj;->app_id:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VLj;->version:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "alipay_client_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/VLj;->alipay_client_version:Ljava/lang/String;

    .line 207
    :cond_0
    return-void
.end method

.method private handleIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->startFromH5()V

    .line 222
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "mUri":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==mUri=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "youkuad"

    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    const-string/jumbo v4, "adext"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "mUriStr":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "advertList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-le v4, v6, :cond_0

    .line 229
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lc8/VLj;->advertPreStr:Ljava/lang/String;

    .line 230
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lc8/VLj;->advertMiddleStr:Ljava/lang/String;

    .line 231
    const/4 v4, 0x2

    aget-object v4, v0, v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lc8/VLj;->advertPauseStr:Ljava/lang/String;

    .line 232
    sget-object v4, Lc8/VLj;->advertPreStr:Ljava/lang/String;

    sput-object v4, Lc8/Vck;->advertPreStr:Ljava/lang/String;

    .line 233
    sget-object v4, Lc8/VLj;->advertMiddleStr:Ljava/lang/String;

    sput-object v4, Lc8/Vck;->advertMiddleStr:Ljava/lang/String;

    .line 234
    sget-object v4, Lc8/VLj;->advertPauseStr:Ljava/lang/String;

    sput-object v4, Lc8/Vck;->advertPauseStr:Ljava/lang/String;

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==\u524d\u8d34\u5e7f\u544a\uff1a=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/VLj;->advertPreStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==\u4e2d\u8336\u5e7f\u544a\uff1a=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/VLj;->advertMiddleStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==\u6682\u505c\u5e7f\u544a\uff1a=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/VLj;->advertPauseStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "advertList":[Ljava/lang/String;
    .end local v2    # "mUri":Ljava/lang/String;
    .end local v3    # "mUriStr":[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/phone/ActivityWelcome;->doAlipayWallerLogin(Landroid/content/Intent;)V

    .line 248
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private jumpToHome()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->isTaskOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "ykdebug://"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->finish()V

    .line 62
    return-void
.end method

.method private killAllProcesses(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->clearActivityStack()V

    .line 130
    invoke-direct {p0, p1}, Lcom/youku/phone/ActivityWelcome;->killChildProcesses(Landroid/content/Context;)V

    .line 133
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "var3":Ljava/lang/Exception;
    const-string/jumbo v1, "killAllProcesses"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private killChildProcesses(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v2, v6

    .line 113
    .local v2, "uid":J
    const-string/jumbo v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 114
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 116
    .local v4, "var5":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 118
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "uid":J
    .end local v4    # "var5":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 123
    .local v5, "var7":Ljava/lang/Exception;
    const-string/jumbo v6, "killChildProcesses"

    invoke-static {v6, v5}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v5    # "var7":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private postActiveInfo(Landroid/net/Uri;)V
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 289
    new-instance v0, Lc8/RIj;

    invoke-direct {v0}, Lc8/RIj;-><init>()V

    new-instance v1, Lcom/youku/network/HttpIntent;

    .line 290
    invoke-static {p1, v5}, Lc8/lSh;->getH5ActiveUrl(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POST"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v2, 0x0

    .line 289
    invoke-virtual {v0, v1, v2}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 291
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v0, p1, v5}, Lc8/rin;->trackH5CallUp(Landroid/net/Uri;I)V

    .line 294
    :cond_0
    return-void
.end method

.method private startFromH5()V
    .locals 3

    .prologue
    .line 251
    const-string/jumbo v1, "splash"

    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/phone/ActivityWelcome;->postActiveInfo(Landroid/net/Uri;)V

    .line 259
    .end local v0    # "source":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0    # "source":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/VLj;->exit()V

    goto :goto_0
.end method


# virtual methods
.method public checkFirstRun()V
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    const-string/jumbo v1, "a1c0f66d02e2a816"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PREFERENCE"

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/ActivityWelcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "isFirstRun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lc8/ULj;

    invoke-direct {v0, p0}, Lc8/ULj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    .line 158
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    invoke-virtual {v0}, Lc8/ULj;->show()V

    .line 159
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    new-instance v1, Lc8/eLj;

    invoke-direct {v1, p0}, Lc8/eLj;-><init>(Lcom/youku/phone/ActivityWelcome;)V

    invoke-virtual {v0, v1}, Lc8/ULj;->setAgreeOnclickListener(Lc8/SLj;)V

    .line 172
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    new-instance v1, Lc8/fLj;

    invoke-direct {v1, p0}, Lc8/fLj;-><init>(Lcom/youku/phone/ActivityWelcome;)V

    invoke-virtual {v0, v1}, Lc8/ULj;->setDisagreeOnclickListener(Lc8/TLj;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->checkPermissionBeforeJump()V

    goto :goto_0
.end method

.method public isTaskOwner()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 302
    const/4 v4, 0x0

    .line 304
    .local v4, "owner":Z
    const/4 v6, 0x0

    .line 305
    .local v6, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_0
    const-string/jumbo v7, "activity"

    .line 306
    invoke-virtual {p0, v7}, Lcom/youku/phone/ActivityWelcome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 307
    .local v1, "am":Landroid/app/ActivityManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_2

    .line 308
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 310
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v7}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    .line 319
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v7, :cond_1

    .line 321
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 322
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "pkgName":Ljava/lang/String;
    :goto_1
    iget v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getTaskId()I

    move-result v10

    if-ne v7, v10, :cond_4

    .line 325
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v8

    .line 329
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_2
    return v4

    .line 313
    .restart local v1    # "am":Landroid/app/ActivityManager;
    :cond_2
    const/4 v7, 0x1

    const/4 v10, 0x1

    invoke-virtual {v1, v7, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 315
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 316
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object v6, v0

    goto :goto_0

    .line 322
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 323
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    move v4, v9

    .line 325
    goto :goto_2

    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v5    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mAlertHandler:Lc8/Ubn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mAlertHandler:Lc8/Ubn;

    invoke-virtual {v0}, Lc8/Ubn;->requestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mAlertHandler:Lc8/Ubn;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Ubn;->onActivityResult(IILandroid/content/Intent;)Lc8/Vbn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vbn;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->jumpToHome()V

    .line 87
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lc8/KLj;

    .line 67
    .local v0, "youku":Lc8/KLj;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/KLj;->mWelCreateStartTime:J

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->handleIntent()V

    .line 72
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->alibabaPagePVStatics()V

    .line 75
    invoke-virtual {p0}, Lcom/youku/phone/ActivityWelcome;->checkFirstRun()V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lc8/KLj;->mWelCreateEndTime:J

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    invoke-virtual {v0}, Lc8/ULj;->dismiss()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/ActivityWelcome;->mDialog:Lc8/ULj;

    .line 216
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 91
    iget-object v2, p0, Lcom/youku/phone/ActivityWelcome;->mRequestHandler:Lc8/Wbn;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/ActivityWelcome;->mRequestHandler:Lc8/Wbn;

    invoke-virtual {v2}, Lc8/Wbn;->requestCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/youku/phone/ActivityWelcome;->mRequestHandler:Lc8/Wbn;

    invoke-virtual {v2, p1, p2, p3}, Lc8/Wbn;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Lc8/Xbn;

    move-result-object v1

    .line 94
    .local v1, "resultHandler":Lc8/Xbn;
    invoke-virtual {v1}, Lc8/Xbn;->isEveryPermissionGranted()Z

    move-result v0

    .line 97
    .local v0, "allGranted":Z
    if-nez v0, :cond_1

    .line 98
    const-string/jumbo v2, "\u5728\u8bbe\u7f6e-\u6743\u9650\u7ba1\u7406-\u4f18\u9177\u4e2d\u5f00\u542f\u6587\u4ef6\u8bbe\u5907\u8bfb\u53d6\u6743\u9650\uff0c\u4ee5\u6b63\u5e38\u4f7f\u7528\u4f18\u9177\u529f\u80fd\u3002"

    const/16 v3, 0x11

    new-instance v4, Lc8/dLj;

    invoke-direct {v4, p0}, Lc8/dLj;-><init>(Lcom/youku/phone/ActivityWelcome;)V

    invoke-virtual {v1, p0, v2, v3, v4}, Lc8/Xbn;->alert(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Lc8/Ubn;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/ActivityWelcome;->mAlertHandler:Lc8/Ubn;

    .line 108
    .end local v0    # "allGranted":Z
    .end local v1    # "resultHandler":Lc8/Xbn;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v0    # "allGranted":Z
    .restart local v1    # "resultHandler":Lc8/Xbn;
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/ActivityWelcome;->jumpToHome()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 279
    invoke-virtual {p0, v0, v0}, Lcom/youku/phone/ActivityWelcome;->overridePendingTransition(II)V

    .line 280
    return-void
.end method
