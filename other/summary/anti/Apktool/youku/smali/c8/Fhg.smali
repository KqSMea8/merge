.class public Lc8/Fhg;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lc8/shg;

.field private b:Lc8/thg;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "new QQAuth() --start"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lc8/thg;

    invoke-direct {v0, p1}, Lc8/thg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    .line 42
    new-instance v0, Lc8/shg;

    iget-object v1, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-direct {v0, v1}, Lc8/shg;-><init>(Lc8/thg;)V

    iput-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    .line 43
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-static {p2, v0}, Lc8/ihg;->c(Landroid/content/Context;Lc8/thg;)V

    .line 44
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "new QQAuth() --end"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 172
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 177
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lc8/fmg;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->login channelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lc8/Fhg;->a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    :goto_1
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string/jumbo v1, "openSDK_LOG.QQAuth"

    const-string/jumbo v2, "-->login get channel id exception."

    invoke-static {v1, v2, v0}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    :cond_1
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "-->login channelId is null "

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sput-boolean v7, Lc8/Jhg;->isOEM:Z

    .line 193
    iget-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, v7

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lc8/shg;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;ZLandroid/support/v4/app/Fragment;)I

    move-result v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lc8/Fhg;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/kmg;->a(Landroid/content/Context;)V

    .line 58
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "QQAuth -- createInstance() --start"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 66
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v0, Lc8/Fhg;

    invoke-direct {v0, p0, p1}, Lc8/Fhg;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    const-string/jumbo v1, "openSDK_LOG.QQAuth"

    const-string/jumbo v2, "QQAuth -- createInstance()  --end"

    invoke-static {v1, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string/jumbo v1, "openSDK_LOG.QQAuth"

    const-string/jumbo v2, "createInstance() error --end"

    invoke-static {v1, v2, v0}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "login()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/Fhg;->a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 127
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->login activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Fhg;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "loginWithOEM"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Jhg;->isOEM:Z

    .line 213
    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo p4, "null"

    .line 216
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string/jumbo p5, "null"

    .line 219
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    const-string/jumbo p6, "null"

    .line 222
    :cond_2
    sput-object p5, Lc8/Jhg;->installChannel:Ljava/lang/String;

    .line 223
    sput-object p4, Lc8/Jhg;->registerChannel:Ljava/lang/String;

    .line 224
    sput-object p6, Lc8/Jhg;->businessId:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    invoke-virtual {v0, p1, p2, p3}, Lc8/shg;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 153
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-->login activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 154
    invoke-direct/range {v0 .. v5}, Lc8/Fhg;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lc8/Dmg;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/shg;->a(Lc8/Dmg;)V

    .line 257
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "setOpenId() --start"

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-virtual {v0, p2}, Lc8/thg;->setOpenId(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-static {p1, v0}, Lc8/ihg;->d(Landroid/content/Context;Lc8/thg;)V

    .line 335
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "setOpenId() --end"

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public a(Lc8/Dmg;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    invoke-virtual {v0, p1}, Lc8/shg;->b(Lc8/Dmg;)V

    .line 266
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 307
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccessToken(), validTimeInSecond = "

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

    .line 308
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-virtual {v0, p1, p2}, Lc8/thg;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 6

    .prologue
    .line 248
    const-string/jumbo v0, "openSDK_LOG.QQAuth"

    const-string/jumbo v1, "reAuth()"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lc8/Fhg;->a:Lc8/shg;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lc8/shg;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;ZLandroid/support/v4/app/Fragment;)I

    move-result v0

    return v0
.end method

.method public b()Lc8/thg;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 318
    const-string/jumbo v1, "openSDK_LOG.QQAuth"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSessionValid(), result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-virtual {v0}, Lc8/thg;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lc8/Fhg;->b:Lc8/thg;

    invoke-virtual {v0}, Lc8/thg;->isSessionValid()Z

    move-result v0

    return v0

    .line 318
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method
