.class public Lc8/ubg;
.super Ljava/lang/Object;
.source "WXComponentFactory.java"


# static fields
.field private static sComponentTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentTypesByInstanceId(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static newInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    .locals 7
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "node"    # Lc8/HYf;
    .param p2, "parent"    # Lc8/scg;

    .prologue
    const/4 v5, 0x0

    .line 49
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 78
    :goto_0
    return-object v4

    .line 54
    :cond_1
    sget-object v4, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 55
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v3, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    sget-object v4, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/yag;->getComponent(Ljava/lang/String;)Lc8/rag;

    move-result-object v1

    .line 61
    .local v1, "holder":Lc8/rag;
    if-nez v1, :cond_3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WXComponentFactory error type:["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " class not found"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v4, "container"

    invoke-static {v4}, Lc8/yag;->getComponent(Ljava/lang/String;)Lc8/rag;

    move-result-object v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    new-instance v4, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v5, "Container component not found."

    invoke-direct {v4, v5}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lc8/rag;->createInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WXComponentFactory Exception type:["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 78
    goto/16 :goto_0
.end method

.method public static removeComponentTypesByInstanceId(Ljava/lang/String;)V
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lc8/ubg;->sComponentTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
