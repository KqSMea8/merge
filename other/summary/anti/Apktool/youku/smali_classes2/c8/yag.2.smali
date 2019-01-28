.class public Lc8/yag;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"


# static fields
.field private static sComponentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTypeComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/rag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/yag;->sTypeComponentMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/yag;->sComponentInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lc8/rag;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lc8/rag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1}, Lc8/yag;->registerNativeComponent(Ljava/lang/String;Lc8/rag;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lc8/yag;->registerJSComponent(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc8/yag;->sComponentInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getComponent(Ljava/lang/String;)Lc8/rag;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lc8/yag;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/rag;

    return-object v0
.end method

.method public static registerComponent(Ljava/lang/String;Lc8/rag;Ljava/util/Map;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "holder"    # Lc8/rag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/rag;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/wag;

    invoke-direct {v1, p2, p0, p1}, Lc8/wag;-><init>(Ljava/util/Map;Ljava/lang/String;Lc8/rag;)V

    invoke-virtual {v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static registerJSComponent(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "componentInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "coms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/pVf;->registerComponents(Ljava/util/List;)V

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method private static registerNativeComponent(Ljava/lang/String;Lc8/rag;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "holder"    # Lc8/rag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    invoke-interface {p1}, Lc8/rag;->loadIfNonLazy()V

    .line 74
    sget-object v1, Lc8/yag;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/ArrayStoreException;
    invoke-virtual {v0}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    goto :goto_0
.end method

.method public static reload()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    new-instance v1, Lc8/xag;

    invoke-direct {v1}, Lc8/xag;-><init>()V

    invoke-virtual {v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
