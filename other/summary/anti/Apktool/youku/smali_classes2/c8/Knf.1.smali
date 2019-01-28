.class public Lc8/Knf;
.super Ljava/lang/Object;
.source "PolicyConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mnf;->fetchConfigIfExpired()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mnf;


# direct methods
.method constructor <init>(Lc8/Mnf;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x130

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0xc8

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "result":Lc8/Cnf;
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v5}, Lc8/Mnf;->access$100(Lc8/Mnf;)Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lc8/kpf;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    :try_start_0
    const-string/jumbo v5, "PolicyConfig"

    const-string/jumbo v6, "start fetch config"

    invoke-static {v5, v6}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v5}, Lc8/Mnf;->access$200(Lc8/Mnf;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    iget-object v8, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v8}, Lc8/Mnf;->access$100(Lc8/Mnf;)Landroid/app/Application;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/Mnf;->access$300(Lc8/Mnf;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/hpf;->getConfig(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lc8/Cnf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 303
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    iget v5, v3, Lc8/Cnf;->responseCode:I

    if-ne v5, v9, :cond_2

    iget-object v5, v3, Lc8/Cnf;->configString:Ljava/lang/String;

    invoke-static {v5}, Lc8/Bnf;->checkConfig(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, v3, Lc8/Cnf;->configString:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    iget-object v6, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v6}, Lc8/Mnf;->access$100(Lc8/Mnf;)Landroid/app/Application;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Lc8/Mnf;->update(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    .line 308
    const-string/jumbo v5, "PolicyConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "new config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v5}, Lc8/Mnf;->access$100(Lc8/Mnf;)Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "linkManagerPolicyConfig"

    invoke-virtual {v5, v6, v10}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 314
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "config"

    iget-object v7, v3, Lc8/Cnf;->configString:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, v3, Lc8/Cnf;->etag:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 316
    const-string/jumbo v5, "ETag"

    iget-object v6, v3, Lc8/Cnf;->etag:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    if-eqz v3, :cond_6

    iget v5, v3, Lc8/Cnf;->responseCode:I

    if-eq v5, v9, :cond_3

    iget v5, v3, Lc8/Cnf;->responseCode:I

    if-ne v5, v12, :cond_6

    .line 322
    :cond_3
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v5, v11}, Lc8/Mnf;->access$400(Lc8/Mnf;Z)V

    .line 328
    :goto_2
    invoke-static {}, Lc8/Mnf;->access$500()Lc8/Lnf;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 330
    if-eqz v3, :cond_7

    iget v5, v3, Lc8/Cnf;->responseCode:I

    if-eq v5, v9, :cond_4

    iget v5, v3, Lc8/Cnf;->responseCode:I

    if-ne v5, v12, :cond_7

    .line 331
    :cond_4
    invoke-static {}, Lc8/Mnf;->access$500()Lc8/Lnf;

    move-result-object v5

    invoke-interface {v5}, Lc8/Lnf;->onSuccess()V

    .line 335
    :goto_3
    invoke-static {v13}, Lc8/Mnf;->access$502(Lc8/Lnf;)Lc8/Lnf;

    .line 338
    :cond_5
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PolicyConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 324
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    iget-object v5, p0, Lc8/Knf;->this$0:Lc8/Mnf;

    invoke-static {v5, v10}, Lc8/Mnf;->access$400(Lc8/Mnf;Z)V

    goto :goto_2

    .line 333
    :cond_7
    invoke-static {}, Lc8/Mnf;->access$500()Lc8/Lnf;

    move-result-object v5

    invoke-interface {v5}, Lc8/Lnf;->onFailure()V

    goto :goto_3
.end method
