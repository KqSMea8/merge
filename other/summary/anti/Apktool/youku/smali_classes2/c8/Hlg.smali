.class public Lc8/Hlg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mlg;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Lc8/Mlg;


# direct methods
.method constructor <init>(Lc8/Mlg;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iput-object p2, p0, Lc8/Hlg;->a:Landroid/os/Bundle;

    iput-boolean p3, p0, Lc8/Hlg;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string/jumbo v1, "uin"

    const-string/jumbo v2, "1000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "imei"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Clg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "imsi"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Clg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "android_id"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Clg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "mac"

    invoke-static {}, Lc8/Clg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "platform"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "os_ver"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "position"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/umg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "network"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Blg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "language"

    invoke-static {}, Lc8/Clg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "resolution"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Clg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "apn"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Blg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "model_name"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "sdk_ver"

    const-string/jumbo v2, "3.1.0.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "qz_ver"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.qzone"

    invoke-static {v2, v3}, Lc8/umg;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "qq_ver"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.mobileqq"

    invoke-static {v2, v3}, Lc8/umg;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "qua"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lc8/kmg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/umg;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "packagename"

    invoke-static {}, Lc8/kmg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "app_ver"

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lc8/kmg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/umg;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lc8/Hlg;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lc8/Hlg;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 194
    :cond_0
    new-instance v1, Lcom/tencent/open/b/b;

    invoke-direct {v1, v0}, Lcom/tencent/open/b/b;-><init>(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iget-object v0, v0, Lc8/Mlg;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iget-object v0, v0, Lc8/Mlg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 203
    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/mmg;->a(Landroid/content/Context;Ljava/lang/String;)Lc8/mmg;

    move-result-object v0

    const-string/jumbo v2, "Agent_ReportTimeInterval"

    invoke-virtual {v0, v2}, Lc8/mmg;->a(Ljava/lang/String;)I

    move-result v0

    .line 205
    if-nez v0, :cond_1

    const/16 v0, 0x2710

    .line 209
    :cond_1
    const/16 v2, 0x3e9

    .line 210
    iget-object v3, p0, Lc8/Hlg;->c:Lc8/Mlg;

    const-string/jumbo v4, "report_via"

    invoke-virtual {v3, v4, v1}, Lc8/Mlg;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lc8/Hlg;->b:Z

    if-eqz v1, :cond_4

    .line 211
    :cond_2
    iget-object v0, p0, Lc8/Hlg;->c:Lc8/Mlg;

    invoke-virtual {v0}, Lc8/Mlg;->e()V

    .line 212
    iget-object v0, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iget-object v0, v0, Lc8/Mlg;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    :cond_3
    :goto_0
    return-void

    .line 214
    :cond_4
    iget-object v1, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iget-object v1, v1, Lc8/Mlg;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 216
    iput v2, v1, Landroid/os/Message;->what:I

    .line 217
    iget-object v2, p0, Lc8/Hlg;->c:Lc8/Mlg;

    iget-object v2, v2, Lc8/Mlg;->f:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v1, "openSDK_LOG.ReportManager"

    const-string/jumbo v2, "--> reporVia, exception in sub thread."

    invoke-static {v1, v2, v0}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
