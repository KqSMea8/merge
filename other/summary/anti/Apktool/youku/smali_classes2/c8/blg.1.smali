.class public Lc8/blg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lc8/Dmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/clg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/clg;

.field private b:Lc8/Dmg;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;

.field private f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lc8/clg;Landroid/app/Activity;Lc8/Dmg;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lc8/blg;->a:Lc8/clg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p3, p0, Lc8/blg;->b:Lc8/Dmg;

    .line 279
    iput-object p4, p0, Lc8/blg;->c:Ljava/lang/String;

    .line 280
    iput-object p5, p0, Lc8/blg;->d:Ljava/lang/String;

    .line 281
    iput-object p6, p0, Lc8/blg;->e:Landroid/os/Bundle;

    .line 282
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lc8/blg;->b:Lc8/Dmg;

    invoke-interface {v0}, Lc8/Dmg;->onCancel()V

    .line 317
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 286
    check-cast p1, Lorg/json/JSONObject;

    .line 287
    const/4 v0, 0x0

    .line 289
    :try_start_0
    const-string/jumbo v1, "encry_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 296
    :goto_0
    iget-object v0, p0, Lc8/blg;->e:Landroid/os/Bundle;

    const-string/jumbo v1, "encrytoken"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lc8/blg;->a:Lc8/clg;

    iget-object v1, p0, Lc8/blg;->a:Lc8/clg;

    invoke-static {v1}, Lc8/clg;->a(Lc8/clg;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lc8/blg;->c:Ljava/lang/String;

    iget-object v3, p0, Lc8/blg;->e:Landroid/os/Bundle;

    iget-object v4, p0, Lc8/blg;->d:Ljava/lang/String;

    iget-object v5, p0, Lc8/blg;->b:Lc8/Dmg;

    invoke-static/range {v0 .. v5}, Lc8/clg;->a(Lc8/clg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Dmg;)V

    .line 301
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string/jumbo v0, "openSDK_LOG.SocialApiIml"

    const-string/jumbo v1, "The token get from qq or qzone is empty. Write temp token to localstorage."

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lc8/blg;->a:Lc8/clg;

    iget-object v1, p0, Lc8/blg;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/clg;->writeEncryToken(Landroid/content/Context;)V

    .line 305
    :cond_0
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 291
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 292
    const-string/jumbo v2, "openSDK_LOG.SocialApiIml"

    const-string/jumbo v3, "OpenApi, EncrytokenListener() onComplete error"

    invoke-static {v2, v3, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v0

    goto :goto_0
.end method

.method public onError(Lc8/Fmg;)V
    .locals 3

    .prologue
    .line 309
    const-string/jumbo v0, "openSDK_LOG.SocialApiIml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenApi, EncryptTokenListener() onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc8/Fmg;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lc8/blg;->b:Lc8/Dmg;

    invoke-interface {v0, p1}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 312
    return-void
.end method
