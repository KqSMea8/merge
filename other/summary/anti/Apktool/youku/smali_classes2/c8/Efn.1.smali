.class public Lc8/Efn;
.super Ljava/lang/Object;
.source "CredentialProvider.java"

# interfaces
.implements Lc8/lko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gfn;->observePassportChange(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gfn;


# direct methods
.method constructor <init>(Lc8/Gfn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gfn;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/Efn;->this$0:Lc8/Gfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCookieRefreshed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string/jumbo v0, "Download.Credential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save refreshed cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "private.credential.cookie.2"

    invoke-static {v0, p1}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onExpireLogout()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onTokenRefreshed(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string/jumbo v0, "Download.Credential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save refreshed token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/eOf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v0, "private.credential.stoken.2"

    invoke-static {v0, p1}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "private.crendential.update.at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/Egn;->setLong(Ljava/lang/String;J)V

    .line 271
    return-void
.end method

.method public onUserLogin()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ben;->startAllTaskAuto()V

    .line 244
    new-instance v0, Lc8/Dfn;

    invoke-direct {v0, p0}, Lc8/Dfn;-><init>(Lc8/Efn;)V

    invoke-static {v0}, Lc8/uAo;->isVip(Lc8/kAo;)V

    .line 252
    return-void
.end method

.method public onUserLogout()V
    .locals 2

    .prologue
    .line 256
    const-string/jumbo v0, "private.credential.cookie.2"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "private.credential.stoken.2"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/Egn;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ben;->disableVipMode()V

    .line 259
    return-void
.end method
