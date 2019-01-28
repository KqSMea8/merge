.class public Lc8/oxb;
.super Ljava/lang/Object;
.source "PhenixTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sxb;->preRequest(Lc8/mxf;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sxb;

.field final synthetic val$creator:Lc8/mxf;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/sxb;Lc8/mxf;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/sxb;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/oxb;->this$0:Lc8/sxb;

    iput-object p2, p0, Lc8/oxb;->val$creator:Lc8/mxf;

    iput-object p3, p0, Lc8/oxb;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    new-instance v1, Lc8/Swb;

    invoke-direct {v1}, Lc8/Swb;-><init>()V

    .line 59
    .local v1, "request":Lc8/Swb;
    iget-object v2, p0, Lc8/oxb;->val$creator:Lc8/mxf;

    invoke-virtual {v2}, Lc8/mxf;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Swb;->setUrl(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lc8/oxb;->this$0:Lc8/sxb;

    invoke-static {v2}, Lc8/sxb;->access$000(Lc8/sxb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Swb;->setRequestId(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Lc8/Swb;->setMethod(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, "Phenix"

    invoke-virtual {v1, v2}, Lc8/Swb;->setFriendlyName(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lc8/oxb;->val$params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/Swb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lc8/oxb;->this$0:Lc8/sxb;

    invoke-static {v2}, Lc8/sxb;->access$100(Lc8/sxb;)Lc8/Uwb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/Uwb;->requestWillBeSent(Lc8/Swb;)V

    .line 67
    return-void
.end method
