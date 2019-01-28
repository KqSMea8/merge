.class public Lc8/upf;
.super Ljava/lang/Object;
.source "VisaConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vpf;


# direct methods
.method constructor <init>(Lc8/vpf;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lc8/upf;->this$0:Lc8/vpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "result":Lc8/Cnf;
    const-string/jumbo v3, "AlibcVisa"

    const-string/jumbo v4, "start fetch config"

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v3}, Lc8/kpf;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    :try_start_0
    const-string/jumbo v3, "AlibcVisa"

    const-string/jumbo v4, "start fetch config - "

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lc8/upf;->this$0:Lc8/vpf;

    invoke-static {v3}, Lc8/vpf;->access$000(Lc8/vpf;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/upf;->this$0:Lc8/vpf;

    invoke-static {v5}, Lc8/vpf;->access$100(Lc8/vpf;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/hpf;->getConfig(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lc8/Cnf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lc8/Cnf;->responseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lc8/Cnf;->configString:Ljava/lang/String;

    invoke-static {v3}, Lc8/Bnf;->checkConfig(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, v2, Lc8/Cnf;->configString:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lc8/upf;->this$0:Lc8/vpf;

    invoke-virtual {v3, v1}, Lc8/vpf;->update(Lorg/json/JSONObject;)V

    .line 177
    const-string/jumbo v3, "AlibcVisa"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v3, v2, Lc8/Cnf;->etag:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 183
    const-string/jumbo v3, "ETag"

    iget-object v4, v2, Lc8/Cnf;->etag:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/wpf;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "AlibcVisa"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
