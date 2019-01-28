.class public Lc8/cXf;
.super Ljava/lang/Object;
.source "WXModuleManager.java"


# static fields
.field private static MONITOR_ARG:Ljava/lang/String;

.field private static MONITOR_ERROR_CODE:Ljava/lang/String;

.field private static MONITOR_ERROR_MSG:Ljava/lang/String;

.field private static sDomModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/FYf;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/MXf;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/MXf;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sModuleFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/HWf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/cXf;->sGlobalModuleMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/cXf;->sDomModuleMap:Ljava/util/Map;

    .line 63
    const-string/jumbo v0, "errCode"

    sput-object v0, Lc8/cXf;->MONITOR_ERROR_CODE:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "arg"

    sput-object v0, Lc8/cXf;->MONITOR_ARG:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "errMsg"

    sput-object v0, Lc8/cXf;->MONITOR_ERROR_MSG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lc8/cXf;->sGlobalModuleMap:Ljava/util/Map;

    return-object v0
.end method

.method static callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 12
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "moduleStr"    # Ljava/lang/String;
    .param p2, "methodStr"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    const/4 v11, 0x0

    .line 141
    sget-object v1, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/HWf;

    .line 142
    .local v7, "factory":Lc8/HWf;
    if-nez v7, :cond_1

    .line 143
    const-string/jumbo v1, "[WXModuleManager] module factory not found."

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    move-object v1, v11

    .line 174
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    invoke-static {p0, p1, v7}, Lc8/cXf;->findModule(Ljava/lang/String;Ljava/lang/String;Lc8/HWf;)Lc8/MXf;

    move-result-object v10

    .line 147
    .local v10, "wxModule":Lc8/MXf;
    if-nez v10, :cond_2

    move-object v1, v11

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v8

    .line 151
    .local v8, "instance":Lc8/nVf;
    iput-object v8, v10, Lc8/MXf;->mWXSDKInstance:Lc8/nVf;

    .line 153
    invoke-interface {v7, p2}, Lc8/HWf;->getMethodInvoker(Ljava/lang/String;)Lc8/DWf;

    move-result-object v9

    .line 155
    .local v9, "invoker":Lc8/DWf;
    if-eqz v8, :cond_5

    .line 156
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    .line 157
    .local v0, "userTrackAdapter":Lc8/HVf;
    if-eqz v0, :cond_3

    .line 158
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    sget-object v1, Lc8/cXf;->MONITOR_ERROR_CODE:Ljava/lang/String;

    const-string/jumbo v2, "101"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lc8/cXf;->MONITOR_ARG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lc8/cXf;->MONITOR_ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v8}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v8}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "invokeModule"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    .line 164
    .end local v5    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_3
    invoke-static {v8, v10, p3, v9}, Lc8/cXf;->dispatchCallModuleMethod(Lc8/nVf;Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 173
    instance-of v2, v10, Lc8/FYf;

    if-nez v2, :cond_4

    instance-of v2, v10, Lc8/Ydg;

    if-eqz v2, :cond_0

    .line 174
    :cond_4
    iput-object v11, v10, Lc8/MXf;->mWXSDKInstance:Lc8/nVf;

    goto :goto_0

    .line 166
    .end local v0    # "userTrackAdapter":Lc8/HVf;
    :cond_5
    :try_start_1
    const-string/jumbo v1, "callModuleMethod >>> instance is null"

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    instance-of v1, v10, Lc8/FYf;

    if-nez v1, :cond_6

    instance-of v1, v10, Lc8/Ydg;

    if-eqz v1, :cond_7

    .line 174
    :cond_6
    iput-object v11, v10, Lc8/MXf;->mWXSDKInstance:Lc8/nVf;

    :cond_7
    move-object v1, v11

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v6

    .line 170
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callModuleMethod >>> invoke module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    instance-of v1, v10, Lc8/FYf;

    if-nez v1, :cond_8

    instance-of v1, v10, Lc8/Ydg;

    if-eqz v1, :cond_9

    .line 174
    :cond_8
    iput-object v11, v10, Lc8/MXf;->mWXSDKInstance:Lc8/nVf;

    :cond_9
    move-object v1, v11

    goto/16 :goto_0

    .line 173
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    instance-of v2, v10, Lc8/FYf;

    if-nez v2, :cond_a

    instance-of v2, v10, Lc8/Ydg;

    if-eqz v2, :cond_b

    .line 174
    :cond_a
    iput-object v11, v10, Lc8/MXf;->mWXSDKInstance:Lc8/nVf;

    :cond_b
    throw v1
.end method

.method public static createDomModule(Lc8/nVf;)V
    .locals 3
    .param p0, "instance"    # Lc8/nVf;

    .prologue
    .line 392
    if-eqz p0, :cond_0

    .line 393
    sget-object v0, Lc8/cXf;->sDomModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/FYf;

    invoke-direct {v2, p0}, Lc8/FYf;-><init>(Lc8/nVf;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    return-void
.end method

.method public static destoryDomModule(Ljava/lang/String;)V
    .locals 1
    .param p0, "instanceID"    # Ljava/lang/String;

    .prologue
    .line 398
    sget-object v0, Lc8/cXf;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public static destroyInstanceModules(Ljava/lang/String;)V
    .locals 5
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 374
    sget-object v4, Lc8/cXf;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 376
    .local v3, "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 389
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 381
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 383
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 384
    .local v2, "module":Lc8/MXf;
    instance-of v4, v2, Lc8/uXf;

    if-eqz v4, :cond_2

    .line 385
    check-cast v2, Lc8/uXf;

    .end local v2    # "module":Lc8/MXf;
    invoke-interface {v2}, Lc8/uXf;->destroy()V

    goto :goto_0
.end method

.method private static dispatchCallModuleMethod(Lc8/nVf;Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "wxModule"    # Lc8/MXf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "invoker"    # Lc8/DWf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lc8/nVf;->isPreRenderMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lc8/nVf;->getNativeInvokeHelper()Lc8/JWf;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p2}, Lc8/JWf;->invoke(Ljava/lang/Object;Lc8/DWf;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    :goto_0
    return-object v1

    .line 185
    :cond_0
    invoke-interface {p3}, Lc8/DWf;->isRunOnUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {p1, p2, p3}, Lc8/YYf;->getModuleInvocationAction(Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)Lc8/fYf;

    move-result-object v0

    .line 187
    .local v0, "moduleInvocationAction":Lc8/fYf;
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v1

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lc8/EYf;->postAction(Ljava/lang/String;Lc8/fYf;Z)V

    .line 188
    const/4 v1, 0x0

    goto :goto_0

    .line 190
    .end local v0    # "moduleInvocationAction":Lc8/fYf;
    :cond_1
    invoke-virtual {p0}, Lc8/nVf;->getNativeInvokeHelper()Lc8/JWf;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p2}, Lc8/JWf;->invoke(Ljava/lang/Object;Lc8/DWf;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static findModule(Ljava/lang/String;Ljava/lang/String;Lc8/HWf;)Lc8/MXf;
    .locals 5
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "moduleStr"    # Ljava/lang/String;
    .param p2, "factory"    # Lc8/HWf;

    .prologue
    .line 198
    sget-object v3, Lc8/cXf;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 201
    .local v2, "wxModule":Lc8/MXf;
    if-nez v2, :cond_1

    .line 202
    sget-object v3, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 203
    .local v1, "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-nez v1, :cond_0

    .line 204
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 205
    .restart local v1    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    sget-object v3, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wxModule":Lc8/MXf;
    check-cast v2, Lc8/MXf;

    .line 209
    .restart local v2    # "wxModule":Lc8/MXf;
    if-nez v2, :cond_1

    .line 211
    :try_start_0
    invoke-interface {p2}, Lc8/HWf;->buildInstance()Lc8/MXf;

    move-result-object v2

    .line 212
    invoke-virtual {v2, p1}, Lc8/MXf;->setModuleName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    :cond_1
    move-object v3, v2

    .line 221
    :goto_0
    return-object v3

    .line 213
    .restart local v1    # "moduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " module build instace failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDomModule(Ljava/lang/String;)Lc8/FYf;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 402
    sget-object v0, Lc8/cXf;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FYf;

    return-object v0
.end method

.method public static onActivityBack(Ljava/lang/String;)Z
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 316
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 317
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 319
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v2}, Lc8/MXf;->onActivityBack()Z

    move-result v4

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :goto_1
    return v4

    .line 322
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "module":Lc8/MXf;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityCreate can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 230
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 231
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 233
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2}, Lc8/MXf;->onActivityCreate()V

    goto :goto_0

    .line 236
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityCreate can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityDestroy(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 302
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 303
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 305
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v2}, Lc8/MXf;->onActivityDestroy()V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityDestroy can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityPause(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 259
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 260
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 261
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 263
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Lc8/MXf;->onActivityPause()V

    goto :goto_0

    .line 266
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityPause can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 331
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 332
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 333
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 335
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {v2, p1, p2, p3}, Lc8/MXf;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 338
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityResume(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 274
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 275
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 277
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Lc8/MXf;->onActivityResume()V

    goto :goto_0

    .line 280
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResume can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityStart(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 245
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 246
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 247
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 249
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2}, Lc8/MXf;->onActivityStart()V

    goto :goto_0

    .line 252
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityStart can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onActivityStop(Ljava/lang/String;)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 288
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 289
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 291
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v2}, Lc8/MXf;->onActivityStop()V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityStop can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method public static onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 345
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 346
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 347
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 349
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v2, p1}, Lc8/MXf;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 352
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V
    .locals 6
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 360
    sget-object v4, Lc8/cXf;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 361
    .local v3, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/common/WXModule;>;"
    if-eqz v3, :cond_1

    .line 362
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/MXf;

    .line 364
    .local v2, "module":Lc8/MXf;
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v2, p1, p2, p3}, Lc8/MXf;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 367
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult can not find the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " module"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "module":Lc8/MXf;
    :cond_1
    return-void
.end method

.method static registerJSModule(Ljava/lang/String;Lc8/HWf;)Z
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/HWf;

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lc8/HWf;->getMethods()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/pVf;->registerModules(Ljava/util/Map;)V

    .line 137
    const/4 v1, 0x1

    return v1
.end method

.method public static registerModule(Ljava/lang/String;Lc8/HWf;Z)Z
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/HWf;
    .param p2, "global"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const-string/jumbo v1, "dom"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const-string/jumbo v1, "Cannot registered module with name \'dom\'."

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/bXf;

    invoke-direct {v1, p0, p2, p1}, Lc8/bXf;-><init>(Ljava/lang/String;ZLc8/HWf;)V

    invoke-virtual {v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static registerNativeModule(Ljava/lang/String;Lc8/HWf;)Z
    .locals 2
    .param p0, "moduleName"    # Ljava/lang/String;
    .param p1, "factory"    # Lc8/HWf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    .line 123
    :cond_0
    :try_start_0
    sget-object v1, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/ArrayStoreException;
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    goto :goto_1
.end method

.method public static reload()V
    .locals 4

    .prologue
    .line 406
    sget-object v2, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 407
    sget-object v2, Lc8/cXf;->sModuleFactoryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/HWf;

    invoke-static {v2, v3}, Lc8/cXf;->registerJSModule(Ljava/lang/String;Lc8/HWf;)Z

    goto :goto_0

    .line 411
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;>;"
    :cond_0
    return-void
.end method
