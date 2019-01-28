.class public Lc8/shg;
.super Lc8/Jhg;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qhg;,
        Lc8/lhg;,
        Lc8/rhg;
    }
.end annotation


# static fields
.field public static final SECURE_LIB_ARM64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_64"

.field public static final SECURE_LIB_ARM_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_FILE_NAME:Ljava/lang/String; = null

.field public static SECURE_LIB_NAME:Ljava/lang/String; = null

.field public static final SECURE_LIB_X86_64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86_64"

.field public static final SECURE_LIB_X86_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86"


# instance fields
.field private c:Lc8/Dmg;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "libwbsafeedit"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 94
    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    const-string/jumbo v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v0, "libwbsafeedit_64"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "is arm64-v8a architecture"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v0, "libwbsafeedit_x86"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "is x86 architecture"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v0, "libwbsafeedit_x86_64"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "is x86_64 architecture"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v0, "libwbsafeedit"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_3
    const-string/jumbo v0, "libwbsafeedit"

    sput-object v0, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/shg;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lc8/thg;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lc8/Jhg;-><init>(Lc8/thg;)V

    .line 125
    return-void
.end method

.method private a(ZLc8/Dmg;)I
    .locals 7

    .prologue
    .line 239
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "OpenUi, showDialog -- start"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 242
    invoke-virtual {p0}, Lc8/shg;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    if-eqz p1, :cond_0

    .line 244
    const-string/jumbo v1, "isadd"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    const-string/jumbo v1, "scope"

    iget-object v2, p0, Lc8/shg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "client_id"

    iget-object v2, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v2}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-boolean v1, Lc8/shg;->isOEM:Z

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, "pf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "desktop_m_qq-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/shg;->installChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/shg;->registerChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/shg;->businessId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lc8/omg;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string/jumbo v3, "sign"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "display"

    const-string/jumbo v2, "mobile"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v1, "response_type"

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "redirect_uri"

    const-string/jumbo v2, "auth://tauth.qq.com/"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v1, "cancel_display"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "switch"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "status_userip"

    invoke-static {}, Lc8/umg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-static {}, Lc8/nmg;->a()Lc8/nmg;

    move-result-object v2

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "http://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {v2, v3, v4}, Lc8/nmg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-static {v0}, Lc8/cmg;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    new-instance v0, Lc8/rhg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/rhg;-><init>(Lc8/shg;Landroid/content/Context;Lc8/Dmg;ZZ)V

    .line 277
    const-string/jumbo v1, "openSDK_LOG.AuthAgent"

    const-string/jumbo v2, "OpenUi, showDialog TDialog"

    invoke-static {v1, v2}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lc8/khg;

    invoke-direct {v1, p0, v6, v0}, Lc8/khg;-><init>(Lc8/shg;Ljava/lang/String;Lc8/Dmg;)V

    invoke-static {v1}, Lc8/smg;->a(Ljava/lang/Runnable;)V

    .line 300
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "OpenUi, showDialog -- end"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x2

    return v0

    .line 251
    :cond_1
    const-string/jumbo v1, "pf"

    const-string/jumbo v2, "openmobile_android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z
    .locals 10

    .prologue
    .line 305
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "startActionActivity() -- start"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {p0, v0}, Lc8/shg;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_3

    .line 310
    invoke-virtual {p0}, Lc8/shg;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 311
    if-eqz p3, :cond_0

    .line 312
    const-string/jumbo v2, "isadd"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    const-string/jumbo v2, "scope"

    iget-object v3, p0, Lc8/shg;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v2, "client_id"

    iget-object v3, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v3}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-boolean v2, Lc8/shg;->isOEM:Z

    if-eqz v2, :cond_1

    .line 318
    const-string/jumbo v2, "pf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "desktop_m_qq-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/shg;->installChannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/shg;->registerChannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/shg;->businessId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    const-string/jumbo v2, "need_pay"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v2, "oauth_app_name"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/omg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v2, "key_action"

    const-string/jumbo v3, "action_login"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v2, "key_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Lc8/shg;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    new-instance v1, Lc8/qhg;

    iget-object v2, p0, Lc8/shg;->c:Lc8/Dmg;

    invoke-direct {v1, p0, v2}, Lc8/qhg;-><init>(Lc8/shg;Lc8/Dmg;)V

    .line 330
    iput-object v1, p0, Lc8/shg;->c:Lc8/Dmg;

    .line 332
    invoke-static {}, Lc8/Mhg;->getInstance()Lc8/Mhg;

    move-result-object v1

    const/16 v2, 0x2b5d

    iget-object v3, p0, Lc8/shg;->c:Lc8/Dmg;

    invoke-virtual {v1, v2, v3}, Lc8/Mhg;->setListenerWithRequestcode(ILc8/Dmg;)Ljava/lang/Object;

    .line 333
    if-eqz p2, :cond_2

    .line 334
    const-string/jumbo v1, "openSDK_LOG.AuthAgent"

    const-string/jumbo v2, "startAssitActivity fragment"

    invoke-static {v1, v2}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/16 v1, 0x2b5d

    invoke-virtual {p0, p2, v0, v1}, Lc8/shg;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 340
    :goto_1
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "startActionActivity() -- end, found activity for loginIntent"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "LOGIN_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, ""

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    .line 349
    :goto_2
    return v0

    .line 320
    :cond_1
    const-string/jumbo v2, "pf"

    const-string/jumbo v3, "openmobile_android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_2
    const-string/jumbo v1, "openSDK_LOG.AuthAgent"

    const-string/jumbo v2, "startAssitActivity activity"

    invoke-static {v1, v2}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/16 v1, 0x2b5d

    invoke-virtual {p0, p1, v0, v1}, Lc8/shg;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1

    .line 346
    :cond_3
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "LOGIN_CHECK_SDK"

    const-string/jumbo v3, "1000"

    iget-object v4, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v4}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "startActionActivity fail"

    invoke-virtual/range {v0 .. v9}, Lc8/Dlg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    .line 348
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "startActionActivity() -- end, no target activity for loginIntent"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic b(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method

.method static synthetic c(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method

.method static synthetic d(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method

.method static synthetic e(Lc8/shg;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic f(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method

.method static synthetic g(Lc8/shg;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/shg;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lc8/shg;)Lc8/thg;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    return-object v0
.end method


# virtual methods
.method protected a(Lc8/Dmg;)V
    .locals 7

    .prologue
    .line 358
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "reportDAU() -- start"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "tencent&sdk&qazxc***14969%%"

    .line 360
    const-string/jumbo v2, "qzone3.4"

    .line 361
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v0}, Lc8/thg;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 362
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v0}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v4

    .line 363
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v0}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 364
    const-string/jumbo v0, ""

    .line 365
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/umg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "reportDAU -- encrytoken is null"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_1
    const-string/jumbo v2, "https://openmobile.qq.com/user/user_login_statis"

    .line 373
    invoke-virtual {p0}, Lc8/shg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 374
    const-string/jumbo v1, "encrytoken"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "POST"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 376
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "reportDAU() -- end"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 385
    const-string/jumbo v2, "https://openmobile.qq.com/v3/user/get_info"

    .line 386
    invoke-virtual {p0}, Lc8/shg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 387
    const-string/jumbo v0, "reqType"

    const-string/jumbo v1, "checkLogin"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v5, Lc8/Ihg;

    new-instance v0, Lc8/lhg;

    invoke-direct {v0, p0, p1}, Lc8/lhg;-><init>(Lc8/shg;Lc8/Dmg;)V

    invoke-direct {v5, p0, v0}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 389
    iget-object v0, p0, Lc8/shg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 391
    return-void
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;)I
    .locals 6

    .prologue
    .line 204
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lc8/shg;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;ZLandroid/support/v4/app/Fragment;)I

    move-result v0

    return v0
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lc8/Dmg;ZLandroid/support/v4/app/Fragment;)I
    .locals 9

    .prologue
    .line 208
    iput-object p2, p0, Lc8/shg;->d:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/shg;->e:Ljava/lang/ref/WeakReference;

    .line 210
    iput-object p3, p0, Lc8/shg;->c:Lc8/Dmg;

    .line 212
    invoke-direct {p0, p1, p5, p4}, Lc8/shg;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    iget-object v1, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v1}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v2}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "5"

    const-string/jumbo v6, "0"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, "0"

    invoke-virtual/range {v0 .. v8}, Lc8/Dlg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-static {}, Lc8/Dlg;->a()Lc8/Dlg;

    move-result-object v0

    iget-object v1, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v1}, Lc8/thg;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/shg;->b:Lc8/thg;

    invoke-virtual {v2}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "5"

    const-string/jumbo v6, "1"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, "0"

    invoke-virtual/range {v0 .. v8}, Lc8/Dlg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "doLogin startActivity fail show dialog."

    invoke-static {v0, v1}, Lc8/vlg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lc8/qhg;

    iget-object v1, p0, Lc8/shg;->c:Lc8/Dmg;

    invoke-direct {v0, p0, v1}, Lc8/qhg;-><init>(Lc8/shg;Lc8/Dmg;)V

    .line 227
    iput-object v0, p0, Lc8/shg;->c:Lc8/Dmg;

    .line 228
    iget-object v0, p0, Lc8/shg;->c:Lc8/Dmg;

    invoke-direct {p0, p4, v0}, Lc8/shg;->a(ZLc8/Dmg;)I

    move-result v0

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lc8/shg;->e:Ljava/lang/ref/WeakReference;

    .line 235
    iput-object v0, p0, Lc8/shg;->c:Lc8/Dmg;

    .line 236
    return-void
.end method
