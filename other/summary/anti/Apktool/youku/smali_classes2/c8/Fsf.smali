.class public Lc8/Fsf;
.super Lc8/Ktf;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ktf",
        "<",
        "Lcom/taobao/orange/model/ConfigDO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;

.field final synthetic val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;


# direct methods
.method constructor <init>(Lc8/Jsf;Ljava/lang/String;ZLjava/lang/String;ILcom/taobao/orange/model/NameSpaceDO;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "isAckReq"    # Z
    .param p4, "reqType"    # Ljava/lang/String;
    .param p5, "retryMaxNum"    # I

    .prologue
    .line 302
    iput-object p1, p0, Lc8/Fsf;->this$0:Lc8/Jsf;

    iput-object p6, p0, Lc8/Fsf;->val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    invoke-direct {p0, p2, p3, p4, p5}, Lc8/Ktf;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getReqParams()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    new-instance v1, Lc8/JN;

    const-string/jumbo v2, "resourceId"

    iget-object v3, p0, Lc8/Fsf;->val$nameSpaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    iget-object v3, v3, Lcom/taobao/orange/model/NameSpaceDO;->resourceId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lc8/JN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-object v0
.end method

.method protected getReqPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 317
    const-class v0, Lcom/taobao/orange/model/ConfigDO;

    invoke-static {p1, v0}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/ConfigDO;

    return-object v0
.end method

.method protected bridge synthetic parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lc8/Fsf;->parseResContent(Ljava/lang/String;)Lcom/taobao/orange/model/ConfigDO;

    move-result-object v0

    return-object v0
.end method
