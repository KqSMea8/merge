.class public Lc8/CYm;
.super Ljava/lang/Object;
.source "YoukuConfigAdapter.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DYm;->addConfigObserver(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DYm;

.field final synthetic val$popLayer:Lcom/alibaba/poplayer/PopLayer;


# direct methods
.method constructor <init>(Lc8/DYm;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DYm;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/CYm;->this$0:Lc8/DYm;

    iput-object p2, p0, Lc8/CYm;->val$popLayer:Lcom/alibaba/poplayer/PopLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "isCache"    # Z

    .prologue
    .line 62
    invoke-static {}, Lc8/HYm;->isOrangeSwitchOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$000(Lc8/DYm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".orange.switch.colse.return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$000(Lc8/DYm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$000(Lc8/DYm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".orange.config.null.return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    iget-object v3, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v3, p1}, Lc8/DYm;->access$100(Lc8/DYm;Ljava/lang/String;)V

    .line 78
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "configStr":Ljava/lang/String;
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v3

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$000(Lc8/DYm;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/youku/poplayer/config/ChannelEnum;->ORANGE:Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v3, v4, v1, v5}, Lc8/AYm;->updateConfigData(Ljava/lang/String;Ljava/lang/String;Lcom/youku/poplayer/config/ChannelEnum;)Z

    move-result v2

    .line 83
    .local v2, "updateState":Z
    if-eqz v2, :cond_3

    .line 84
    iget-object v3, p0, Lc8/CYm;->val$popLayer:Lcom/alibaba/poplayer/PopLayer;

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$200(Lc8/DYm;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 87
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc8/CYm;->this$0:Lc8/DYm;

    invoke-static {v4}, Lc8/DYm;->access$000(Lc8/DYm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".orange.config.update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
