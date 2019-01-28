.class public Lc8/Stf;
.super Lc8/Ktf;
.source "IndexUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ttf;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ktf",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ttf;


# direct methods
.method constructor <init>(Lc8/Ttf;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ttf;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "isAckReq"    # Z
    .param p4, "reqType"    # Ljava/lang/String;
    .param p5, "retryMaxNum"    # I

    .prologue
    .line 59
    iput-object p1, p0, Lc8/Stf;->this$0:Lc8/Ttf;

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
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    new-instance v1, Lc8/JN;

    const-string/jumbo v2, "clientAppIndexVersion"

    iget-object v3, p0, Lc8/Stf;->this$0:Lc8/Ttf;

    iget-object v3, v3, Lc8/Ttf;->val$appIndexVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lc8/JN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lc8/JN;

    const-string/jumbo v2, "clientVersionIndexVersion"

    iget-object v3, p0, Lc8/Stf;->this$0:Lc8/Ttf;

    iget-object v3, v3, Lc8/Ttf;->val$versionIndexVersion:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lc8/JN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method

.method protected getReqPostBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic parseResContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lc8/Stf;->parseResContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseResContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    return-object p1
.end method
