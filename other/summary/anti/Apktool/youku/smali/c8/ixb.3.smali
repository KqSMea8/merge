.class public Lc8/ixb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->onResponseCode(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$code:I

.field final synthetic val$headers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/nxb;ILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 124
    iput-object p1, p0, Lc8/ixb;->this$0:Lc8/nxb;

    iput p2, p0, Lc8/ixb;->val$code:I

    iput-object p3, p0, Lc8/ixb;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 127
    const-string/jumbo v4, "NetworkTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v6}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " onResponseCode -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/ixb;->val$code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/ixb;->val$headers:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    new-instance v5, Lc8/Twb;

    invoke-direct {v5}, Lc8/Twb;-><init>()V

    invoke-static {v4, v5}, Lc8/nxb;->access$302(Lc8/nxb;Lc8/Twb;)Lc8/Twb;

    .line 129
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    iget v5, p0, Lc8/ixb;->val$code:I

    invoke-virtual {v4, v5}, Lc8/Twb;->setStatusCode(I)V

    .line 130
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    iget-object v5, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v5}, Lc8/nxb;->access$000(Lc8/nxb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Twb;->setRequestId(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    iget-object v5, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v5}, Lc8/nxb;->access$100(Lc8/nxb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Twb;->setUrl(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    iget v5, p0, Lc8/ixb;->val$code:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/bag;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Twb;->setReasonPhrase(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, ""

    .line 135
    .local v2, "nullKeyValues":Ljava/lang/String;
    iget-object v4, p0, Lc8/ixb;->val$headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v4

    const-string/jumbo v5, "NULL"

    invoke-virtual {v4, v5, v2}, Lc8/Twb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v4}, Lc8/nxb;->access$200(Lc8/nxb;)Lc8/Uwb;

    move-result-object v4

    iget-object v5, p0, Lc8/ixb;->this$0:Lc8/nxb;

    invoke-static {v5}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Uwb;->responseHeadersReceived(Lc8/Twb;)V

    .line 146
    iget-object v4, p0, Lc8/ixb;->this$0:Lc8/nxb;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lc8/nxb;->access$402(Lc8/nxb;Z)Z

    .line 147
    return-void
.end method
