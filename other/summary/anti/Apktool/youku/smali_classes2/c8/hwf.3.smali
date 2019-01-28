.class public Lc8/hwf;
.super Lc8/Kyf;
.source "PhenixProduceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwf;->callMemMissListenerIfNeed(Ljava/lang/Class;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jwf;


# direct methods
.method constructor <init>(Lc8/jwf;ILc8/oyf;Lc8/Jyf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jwf;
    .param p2, "x0"    # I
    .param p4, "x2"    # Lc8/Jyf;

    .prologue
    .line 129
    .local p3, "x1":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    iput-object p1, p0, Lc8/hwf;->this$0:Lc8/jwf;

    invoke-direct {p0, p2, p3, p4}, Lc8/Kyf;-><init>(ILc8/oyf;Lc8/Jyf;)V

    return-void
.end method


# virtual methods
.method public run(Lc8/oyf;Lc8/Jyf;)V
    .locals 2
    .param p1, "nullConsumer"    # Lc8/oyf;
    .param p2, "nullWrapper"    # Lc8/Jyf;

    .prologue
    .line 132
    new-instance v0, Lc8/sxf;

    iget-object v1, p0, Lc8/hwf;->this$0:Lc8/jwf;

    invoke-static {v1}, Lc8/jwf;->access$000(Lc8/jwf;)Lc8/Jxf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/sxf;-><init>(Lc8/nxf;)V

    .line 133
    .local v0, "event":Lc8/sxf;
    iget-object v1, p0, Lc8/hwf;->this$0:Lc8/jwf;

    invoke-static {v1}, Lc8/jwf;->access$000(Lc8/jwf;)Lc8/Jxf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/sxf;->setUrl(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lc8/hwf;->this$0:Lc8/jwf;

    invoke-static {v1}, Lc8/jwf;->access$100(Lc8/jwf;)Lc8/qxf;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 135
    return-void
.end method
