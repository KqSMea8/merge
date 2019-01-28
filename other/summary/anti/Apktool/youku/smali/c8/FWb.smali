.class public abstract Lc8/FWb;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    }
.end annotation


# instance fields
.field protected pluginData:Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;)V
    .locals 0
    .param p1, "pluginData"    # Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/FWb;->pluginData:Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected executePluginMainClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    const-class v1, Lc8/CWb;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/CWb;

    .line 24
    .local v0, "initializerInstance":Lc8/CWb;
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/CWb;->init(Landroid/app/Application;Lc8/nWb;)V

    .line 26
    .end local v0    # "initializerInstance":Lc8/CWb;
    :cond_0
    return-void
.end method
