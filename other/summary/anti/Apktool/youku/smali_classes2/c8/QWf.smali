.class public Lc8/QWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/ZWf;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lc8/QWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/QWf;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lc8/QWf;->val$params:Ljava/util/List;

    iput-object p4, p0, Lc8/QWf;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lc8/QWf;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1085
    iget-object v8, p0, Lc8/QWf;->val$args:[Ljava/lang/Object;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lc8/QWf;->val$args:[Ljava/lang/Object;

    array-length v8, v8

    if-nez v8, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v1, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lc8/QWf;->val$args:[Ljava/lang/Object;

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 1091
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1093
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v8, p0, Lc8/QWf;->val$params:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 1094
    new-instance v6, Landroid/support/v4/util/ArrayMap;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 1095
    .local v6, "map":Landroid/support/v4/util/ArrayMap;
    const-string/jumbo v8, "params"

    iget-object v9, p0, Lc8/QWf;->val$params:Ljava/util/List;

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .end local v6    # "map":Landroid/support/v4/util/ArrayMap;
    :cond_3
    new-instance v7, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v7}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 1100
    .local v7, "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "method"

    iget-object v9, p0, Lc8/QWf;->val$method:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v8, "args"

    invoke-virtual {v7, v8, v1}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    iget-object v8, p0, Lc8/QWf;->this$0:Lc8/ZWf;

    invoke-static {v8}, Lc8/ZWf;->access$000(Lc8/ZWf;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v8

    iget-object v9, p0, Lc8/QWf;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v8, p0, Lc8/QWf;->this$0:Lc8/ZWf;

    invoke-static {v8}, Lc8/ZWf;->access$000(Lc8/ZWf;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v8

    iget-object v9, p0, Lc8/QWf;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1109
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    iget-object v8, p0, Lc8/QWf;->this$0:Lc8/ZWf;

    invoke-static {v8}, Lc8/ZWf;->access$000(Lc8/ZWf;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v8

    iget-object v9, p0, Lc8/QWf;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
