.class public Lc8/Emg;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final REQUEST_LOGIN:I = 0x2711

.field private static b:Lc8/Emg;


# instance fields
.field private final a:Lc8/Fhg;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1, p2}, Lc8/Fhg;->a(Ljava/lang/String;Landroid/content/Context;)Lc8/Fhg;

    move-result-object v0

    iput-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    .line 53
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 94
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.tauth.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</intent-filter>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    const-string/jumbo v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Lc8/Emg;
    .locals 4

    .prologue
    .line 57
    const-class v1, Lc8/Emg;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/kmg;->a(Landroid/content/Context;)V

    .line 58
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lc8/Emg;->b:Lc8/Emg;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lc8/Emg;

    invoke-direct {v0, p0, p1}, Lc8/Emg;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lc8/Emg;->b:Lc8/Emg;

    .line 68
    :cond_0
    :goto_0
    invoke-static {p1, p0}, Lc8/Emg;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_1
    monitor-exit v1

    return-object v0

    .line 62
    :cond_1
    :try_start_1
    sget-object v0, Lc8/Emg;->b:Lc8/Emg;

    invoke-virtual {v0}, Lc8/Emg;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lc8/Emg;->b:Lc8/Emg;

    invoke-virtual {v0, p1}, Lc8/Emg;->logout(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lc8/Emg;

    invoke-direct {v0, p0, p1}, Lc8/Emg;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lc8/Emg;->b:Lc8/Emg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_2
    :try_start_2
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v2, "createInstance()  -- end"

    invoke-static {v0, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lc8/Emg;->b:Lc8/Emg;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static handleResultData(Landroid/content/Intent;Lc8/Dmg;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    const-string/jumbo v3, "openSDK_LOG.Tencent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleResultData() data = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", listener = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lc8/Mhg;->getInstance()Lc8/Mhg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/Mhg;->handleDataToListener(Landroid/content/Intent;Lc8/Dmg;)V

    .line 439
    return-void

    :cond_0
    move v0, v2

    .line 437
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static onActivityResultData(IILandroid/content/Intent;Lc8/Dmg;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    const-string/jumbo v3, "openSDK_LOG.Tencent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResultData() reqcode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", resultcode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", data = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", listener = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lc8/Mhg;->getInstance()Lc8/Mhg;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lc8/Mhg;->onActivityResult(IILandroid/content/Intent;Lc8/Dmg;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 376
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)I
    .locals 2

    .prologue
    .line 317
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "ask()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lc8/alg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/alg;-><init>(Lc8/thg;)V

    .line 319
    invoke-virtual {v0, p1, p2, p3}, Lc8/alg;->ask(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public checkLogin(Lc8/Dmg;)V
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "checkLogin()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0, p1}, Lc8/Fhg;->a(Lc8/Dmg;)V

    .line 293
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thg;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thg;->getExpireTimeInSecond()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQQToken()Lc8/thg;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    return-object v0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)I
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "gift()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lc8/alg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/alg;-><init>(Lc8/thg;)V

    .line 312
    invoke-virtual {v0, p1, p2, p3}, Lc8/alg;->gift(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public handleLoginData(Landroid/content/Intent;Lc8/Dmg;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    const-string/jumbo v3, "openSDK_LOG.Tencent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleLoginData() data = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", listener = null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lc8/Mhg;->getInstance()Lc8/Mhg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Mhg;->handleDataToListener(Landroid/content/Intent;Lc8/Dmg;)V

    .line 425
    return-void

    :cond_0
    move v0, v2

    .line 423
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)I
    .locals 2

    .prologue
    .line 296
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "invite()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lc8/alg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/alg;-><init>(Lc8/thg;)V

    .line 298
    invoke-virtual {v0, p1, p2, p3}, Lc8/alg;->invite(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lc8/Emg;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Emg;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->c()Z

    move-result v0

    return v0
.end method

.method public isSupportSSOLogin(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 497
    invoke-static {p1}, Lc8/umg;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-string/jumbo v0, "com.tencent.minihd.qq"

    invoke-static {p1, v0}, Lc8/omg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    .line 503
    :cond_0
    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-static {p1, v0}, Lc8/omg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    if-nez v0, :cond_1

    .line 507
    const/4 v0, 0x0

    goto :goto_0

    .line 510
    :cond_1
    invoke-static {p1}, Lc8/omg;->b(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 3

    .prologue
    .line 158
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "login() with activity, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Fhg;->a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I

    move-result v0

    return v0
.end method

.method public login(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;)I
    .locals 3

    .prologue
    .line 186
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "login() with fragment, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lc8/Fhg;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loginServerSide(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 3

    .prologue
    .line 214
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loginServerSide() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lc8/Fhg;->a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I

    move-result v0

    return v0
.end method

.method public loginServerSide(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;)I
    .locals 3

    .prologue
    .line 243
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loginServerSide() with fragment, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, p1, v1, p3, v2}, Lc8/Fhg;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 261
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loginWithOEM() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/Fhg;->a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "logout()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v2, v1}, Lc8/thg;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc8/thg;->setOpenId(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 363
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "onActivityResult() deprecated, will do nothing"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 2

    .prologue
    .line 351
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "publishToQzone()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lc8/Shg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Shg;-><init>(Landroid/content/Context;Lc8/thg;)V

    .line 353
    invoke-virtual {v0, p1, p2, p3}, Lc8/Shg;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 354
    return-void
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 3

    .prologue
    .line 272
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reAuth() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Fhg;->b(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I

    move-result v0

    return v0
.end method

.method public releaseResource()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public reportDAU()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->a()V

    .line 283
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    .prologue
    .line 333
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "request()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lc8/cmg;->request(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 325
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "requestAsync()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v0

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 328
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 458
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccessToken(), expiresIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v0, p1, p2}, Lc8/Fhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 471
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "setOpenId() --start"

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lc8/Fhg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "setOpenId() --end"

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 2

    .prologue
    .line 339
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "shareToQQ()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lc8/Phg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Phg;-><init>(Landroid/content/Context;Lc8/thg;)V

    .line 341
    invoke-virtual {v0, p1, p2, p3}, Lc8/Phg;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 342
    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
    .locals 2

    .prologue
    .line 345
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "shareToQzone()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lc8/Uhg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Uhg;-><init>(Landroid/content/Context;Lc8/thg;)V

    .line 347
    invoke-virtual {v0, p1, p2, p3}, Lc8/Uhg;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 348
    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)I
    .locals 2

    .prologue
    .line 303
    const-string/jumbo v0, "openSDK_LOG.Tencent"

    const-string/jumbo v1, "story()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lc8/alg;

    iget-object v1, p0, Lc8/Emg;->a:Lc8/Fhg;

    invoke-virtual {v1}, Lc8/Fhg;->b()Lc8/thg;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/alg;-><init>(Lc8/thg;)V

    .line 305
    invoke-virtual {v0, p1, p2, p3}, Lc8/alg;->story(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 306
    const/4 v0, 0x0

    return v0
.end method
