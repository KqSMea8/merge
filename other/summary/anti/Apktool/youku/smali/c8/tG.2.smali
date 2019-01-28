.class public Lc8/tG;
.super Lc8/WB;
.source "WVPackageAppPrefixesConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uG;->updatePrefixesInfos(Ljava/lang/String;Lc8/LB;Ljava/lang/String;)V
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
.field final synthetic this$0:Lc8/uG;

.field final synthetic val$callback:Lc8/LB;


# direct methods
.method constructor <init>(Lc8/uG;Lc8/LB;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lc8/tG;->this$0:Lc8/uG;

    iput-object p2, p0, Lc8/tG;->val$callback:Lc8/LB;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lc8/ZB;I)V
    .locals 6
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v5, 0x0

    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 81
    :cond_0
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v5}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 88
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lc8/tG;->this$0:Lc8/uG;

    invoke-virtual {v2, v0}, Lc8/uG;->parseConfig(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 89
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 97
    :cond_3
    :goto_1
    const-string/jumbo v2, "WVPackageAppPrefixesConfig"

    invoke-static {v2, v0}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_4

    .line 100
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v5}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 102
    :cond_4
    const-string/jumbo v2, "WVPackageAppPrefixesConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config encoding error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "content":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lc8/tG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    iget-object v4, p0, Lc8/tG;->this$0:Lc8/uG;

    iget v4, v4, Lc8/uG;->updateCount:I

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 77
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/tG;->onFinish(Lc8/ZB;I)V

    return-void
.end method
