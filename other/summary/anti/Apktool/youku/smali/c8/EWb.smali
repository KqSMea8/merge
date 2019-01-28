.class public Lc8/EWb;
.super Lc8/FWb;
.source "BuildInPlugin.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;)V
    .locals 0
    .param p1, "pluginData"    # Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lc8/FWb;-><init>(Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;)V

    .line 10
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    iget-object v1, p0, Lc8/EWb;->pluginData:Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->getMainClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/EWb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    .local v0, "initializerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lc8/EWb;->executePluginMainClass(Ljava/lang/Class;)V

    .line 16
    return-void
.end method
