.class public Lc8/eG;
.super Lc8/WB;
.source "WVCustomPackageAppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fG;->updateCustomInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic this$0:Lc8/fG;

.field final synthetic val$callback:Lc8/LB;

.field final synthetic val$configUrl:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$snapshotN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/fG;Lc8/LB;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lc8/eG;->this$0:Lc8/fG;

    iput-object p2, p0, Lc8/eG;->val$callback:Lc8/LB;

    iput-object p3, p0, Lc8/eG;->val$list:Ljava/util/List;

    iput-object p4, p0, Lc8/eG;->val$snapshotN:Ljava/lang/String;

    iput-object p5, p0, Lc8/eG;->val$configUrl:Ljava/lang/String;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lc8/eG;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lc8/eG;->val$callback:Lc8/LB;

    iget-object v1, p0, Lc8/eG;->val$configUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lc8/LB;->updateError(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lc8/eG;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 214
    :cond_0
    const-string/jumbo v0, "WVCustomPackageAppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update custom package failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 216
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 7
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v6, 0x0

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 179
    :cond_0
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v6}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 186
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lc8/eG;->this$0:Lc8/fG;

    iget-object v3, p0, Lc8/eG;->val$list:Ljava/util/List;

    invoke-static {v2, v0, v3}, Lc8/fG;->access$300(Lc8/fG;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 187
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 191
    :cond_3
    iget-object v2, p0, Lc8/eG;->val$list:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/eG;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 193
    iget-object v2, p0, Lc8/eG;->this$0:Lc8/fG;

    iget-object v3, p0, Lc8/eG;->val$list:Ljava/util/List;

    iget-object v4, p0, Lc8/eG;->val$callback:Lc8/LB;

    iget-object v5, p0, Lc8/eG;->val$snapshotN:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lc8/fG;->access$400(Lc8/fG;Ljava/util/List;Lc8/LB;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v6}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 204
    :cond_4
    const-string/jumbo v2, "WVCustomPackageAppConfig"

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

    .line 196
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "content":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lc8/eG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 175
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/eG;->onFinish(Lc8/ZB;I)V

    return-void
.end method
