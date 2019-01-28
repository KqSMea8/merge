.class public Lc8/hG;
.super Lc8/WB;
.source "WVPackageAppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iG;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/iG;


# direct methods
.method constructor <init>(Lc8/iG;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lc8/hG;->this$1:Lc8/iG;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v0, v0, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    new-instance v1, Landroid/taobao/windvane/WindvaneException;

    invoke-direct {v1}, Landroid/taobao/windvane/WindvaneException;-><init>()V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update package failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 6
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "onlineConfig":Lc8/WG;
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageAppforDebug \u4e0b\u8f7d\u603b\u63a7\u914d\u7f6e\u6587\u4ef6\u6210\u529f data:\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v3

    sget-object v4, Lc8/dH;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lc8/aH;->parseGlobalConfig(Ljava/lang/String;)Lc8/WG;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/WG;->isAvailableData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    iget-object v2, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v2, v2, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    new-instance v3, Landroid/taobao/windvane/WindvaneException;

    invoke-direct {v3}, Landroid/taobao/windvane/WindvaneException;-><init>()V

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageAppforDebug \u603b\u63a7\u6587\u4ef6\u7f16\u7801\u5f02\u5e38 encoding error:\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    if-nez v1, :cond_3

    .line 170
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PackageAppforDebug startUpdateApps: GlobalConfig file parse error or invalid!"

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v2, v2, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    new-instance v3, Landroid/taobao/windvane/WindvaneException;

    const-string/jumbo v4, "GlobalConfig file parse error or invalid"

    sget v5, Lc8/UG;->ERR_APPS_CONFIG_PARSE:I

    invoke-direct {v3, v4, v5}, Landroid/taobao/windvane/WindvaneException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/jG;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageAppforDebug \u603b\u63a7\u6587\u4ef6\u89e3\u6790\u5f02\u5e38 fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    instance-of v2, v0, Landroid/taobao/windvane/WindvaneException;

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v2, v2, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    check-cast v0, Landroid/taobao/windvane/WindvaneException;

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v2, v2, Lc8/iG;->val$error:Landroid/webkit/ValueCallback;

    new-instance v3, Landroid/taobao/windvane/WindvaneException;

    sget v4, Lc8/UG;->ERR_APPS_CONFIG_PARSE:I

    invoke-direct {v3, v0, v4}, Landroid/taobao/windvane/WindvaneException;-><init>(Ljava/lang/Throwable;I)V

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lc8/hG;->this$1:Lc8/iG;

    iget-object v2, v2, Lc8/iG;->val$success:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 140
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/hG;->onFinish(Lc8/ZB;I)V

    return-void
.end method
