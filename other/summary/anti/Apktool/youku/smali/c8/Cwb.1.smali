.class public Lc8/Cwb;
.super Lc8/Oxb;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dwb;->end(Lc8/lwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Oxb",
        "<",
        "Lcom/alibaba/aliweex/cache/Package$Info;",
        "Ljava/lang/Void;",
        "Lcom/alibaba/aliweex/cache/Package$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Dwb;

.field final synthetic val$depCombo:Ljava/lang/StringBuffer;

.field final synthetic val$item:Lc8/lwb;


# direct methods
.method constructor <init>(Lc8/Dwb;Ljava/util/List;Lc8/lwb;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Dwb;

    .prologue
    .line 100
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/cache/Package$Info;>;"
    iput-object p1, p0, Lc8/Cwb;->this$1:Lc8/Dwb;

    iput-object p3, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iput-object p4, p0, Lc8/Cwb;->val$depCombo:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lc8/Oxb;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public branch(ILcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 7
    .param p1, "index"    # I
    .param p2, "info"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 103
    iget-object v3, p2, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    .line 104
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/alibaba/aliweex/cache/Package$Info;->getMD5CacheKey()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lc8/Cwb;->this$1:Lc8/Dwb;

    iget-object v5, v5, Lc8/Dwb;->this$0:Lc8/Gwb;

    invoke-static {v5, v3, v2}, Lc8/Gwb;->access$000(Lc8/Gwb;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    .line 106
    .local v0, "fromMemoryCache":Lcom/alibaba/aliweex/cache/Package$Info;
    if-eqz v0, :cond_0

    .line 107
    iget-object v5, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iget-object v5, v5, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v5, p1, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v5, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iget-object v5, v5, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v0    # "fromMemoryCache":Lcom/alibaba/aliweex/cache/Package$Info;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "fromMemoryCache":Lcom/alibaba/aliweex/cache/Package$Info;
    :cond_0
    iget-object v5, p0, Lc8/Cwb;->this$1:Lc8/Dwb;

    iget-object v5, v5, Lc8/Dwb;->this$0:Lc8/Gwb;

    invoke-static {v5, v3, p2}, Lc8/Gwb;->access$100(Lc8/Gwb;Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v1

    .line 112
    .local v1, "fromZcache":Lcom/alibaba/aliweex/cache/Package$Info;
    if-eqz v1, :cond_1

    .line 113
    iget-object v5, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iget-object v5, v5, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_1
    iget-object v5, p0, Lc8/Cwb;->this$1:Lc8/Dwb;

    iget-object v5, v5, Lc8/Dwb;->this$0:Lc8/Gwb;

    invoke-static {v5, p2}, Lc8/Gwb;->access$200(Lc8/Gwb;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    .line 117
    iget-object v5, p2, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    iget-object v5, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iget-object v5, v5, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/alibaba/aliweex/cache/Package$Info;->relpath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "relpath":Ljava/lang/String;
    iget-object v5, p0, Lc8/Cwb;->val$depCombo:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v5, p0, Lc8/Cwb;->val$item:Lc8/lwb;

    iget-object v5, v5, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v5, v5, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic branch(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    check-cast p2, Lcom/alibaba/aliweex/cache/Package$Info;

    invoke-virtual {p0, p1, p2}, Lc8/Cwb;->branch(ILcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    return-object v0
.end method
