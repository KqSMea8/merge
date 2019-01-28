.class public Lcom/youku/vip/lib/config/model/VipConfigModel;
.super Ljava/lang/Object;
.source "VipConfigModel.java"

# interfaces
.implements Lcom/youku/vip/lib/model/VipBaseModel;


# instance fields
.field private configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/vip/lib/config/model/VipConfigModel;->configMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/vip/lib/config/model/VipConfigModel;->configMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/youku/vip/lib/config/model/VipConfigModel;->configMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/youku/vip/lib/config/model/VipConfigModel;->configMap:Ljava/util/Map;

    return-object v0
.end method

.method public setConfigMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/vip/lib/config/model/VipConfigModel;->configMap:Ljava/util/Map;

    .line 22
    return-void
.end method
