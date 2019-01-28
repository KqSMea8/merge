.class public final Lc8/wag;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yag;->registerComponent(Ljava/lang/String;Lc8/rag;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$componentInfo:Ljava/util/Map;

.field final synthetic val$holder:Lc8/rag;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lc8/rag;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/wag;->val$componentInfo:Ljava/util/Map;

    iput-object p2, p0, Lc8/wag;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lc8/wag;->val$holder:Lc8/rag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lc8/wag;->val$componentInfo:Ljava/util/Map;

    .line 53
    .local v1, "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .restart local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lc8/wag;->val$type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v2, "methods"

    iget-object v3, p0, Lc8/wag;->val$holder:Lc8/rag;

    invoke-interface {v3}, Lc8/rag;->getMethods()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lc8/wag;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lc8/wag;->val$holder:Lc8/rag;

    invoke-static {v2, v3}, Lc8/yag;->access$000(Ljava/lang/String;Lc8/rag;)Z

    .line 60
    invoke-static {v1}, Lc8/yag;->access$100(Ljava/util/Map;)Z

    .line 61
    invoke-static {}, Lc8/yag;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "registerInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/taobao/weex/common/WXException;
    const-string/jumbo v2, "register component error:"

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
