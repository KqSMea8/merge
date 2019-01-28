.class public Lc8/DWb;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final DEFAULT_PLUGIN_INITIALIZER:[Ljava/lang/String;

.field private static final PLUGINS_CONFIG_FILE_NAME:Ljava/lang/String; = "godeye.plugin.cfg"

.field private static defaultPluginsInitialized:Z

.field private static final initedPlugins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/DWb;->initedPlugins:Ljava/util/HashSet;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.alibaba.mtl.godeye.client.methodtrace.MethodTraceInitializer"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "com.alibaba.mtl.godeye.client.onlinemonitor.OnlineMonitorInitializer"

    aput-object v2, v0, v1

    sput-object v0, Lc8/DWb;->DEFAULT_PLUGIN_INITIALIZER:[Ljava/lang/String;

    .line 35
    sput-boolean v3, Lc8/DWb;->defaultPluginsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDefaultPlugins()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    sget-boolean v8, Lc8/DWb;->defaultPluginsInitialized:Z

    if-eqz v8, :cond_0

    .line 118
    .local v0, "arr$":[Ljava/lang/String;
    .local v3, "len$":I
    .local v6, "pluginUpdated":Z
    :goto_0
    return-void

    .line 95
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v6    # "pluginUpdated":Z
    :cond_0
    const/4 v6, 0x0

    .line 96
    .restart local v6    # "pluginUpdated":Z
    sget-object v0, Lc8/DWb;->DEFAULT_PLUGIN_INITIALIZER:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 97
    .local v2, "initializer":Ljava/lang/String;
    sget-object v8, Lc8/DWb;->initedPlugins:Ljava/util/HashSet;

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 98
    new-instance v5, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    invoke-direct {v5}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;-><init>()V

    .line 99
    .local v5, "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    invoke-virtual {v5, v2}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->setMainClass(Ljava/lang/String;)V

    .line 100
    new-instance v8, Lc8/EWb;

    invoke-direct {v8, v5}, Lc8/EWb;-><init>(Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;)V

    invoke-virtual {v8}, Lc8/EWb;->execute()V

    .line 101
    sget-object v8, Lc8/DWb;->initedPlugins:Ljava/util/HashSet;

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v6, 0x1

    .line 96
    .end local v5    # "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "initializer":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_4

    .line 107
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/fWb;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "godeye.plugin.cfg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v10

    invoke-virtual {v10}, Lc8/fWb;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v4, "pluginConfigFile":Ljava/io/File;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 110
    .local v7, "writer":Ljava/io/BufferedWriter;
    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    sget-object v8, Lc8/DWb;->initedPlugins:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .restart local v2    # "initializer":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_2

    .line 114
    .end local v2    # "initializer":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 115
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 117
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "pluginConfigFile":Ljava/io/File;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    const/4 v8, 0x1

    sput-boolean v8, Lc8/DWb;->defaultPluginsInitialized:Z

    goto/16 :goto_0
.end method

.method public static loadPlugin(Landroid/app/Application;)V
    .locals 8
    .param p0, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "godeye.plugin.cfg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v7

    invoke-virtual {v7}, Lc8/fWb;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v2, "pluginConfigFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    invoke-static {v2}, Lc8/DWb;->parsePluginData(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v4

    .line 47
    .local v4, "pluginDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    .line 48
    .local v3, "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    new-instance v1, Lc8/EWb;

    invoke-direct {v1, v3}, Lc8/EWb;-><init>(Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;)V

    .line 49
    .local v1, "plugin":Lc8/FWb;
    invoke-virtual {v1}, Lc8/FWb;->execute()V

    .line 50
    sget-object v5, Lc8/DWb;->initedPlugins:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->getMainClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "plugin":Lc8/FWb;
    .end local v3    # "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    .end local v4    # "pluginDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;>;"
    :cond_0
    return-void
.end method

.method private static parsePluginData(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "pluginConfigFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;>;"
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 78
    const-string/jumbo v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    new-instance v1, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;

    invoke-direct {v1}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;-><init>()V

    .line 80
    .local v1, "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;->setMainClass(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "pluginData":Lcom/alibaba/mtl/godeye/client/plugin/runtime/Plugin$PluginData;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 85
    return-object v2
.end method

.method public static removeAllPlugins(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "godeye.plugin.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/fWb;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "pluginConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lc8/DWb;->defaultPluginsInitialized:Z

    .line 65
    return-void
.end method
