.class public Lc8/qyf;
.super Lc8/Kyf;
.source "BaseChainProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ryf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ryf;


# direct methods
.method constructor <init>(Lc8/ryf;ILc8/oyf;Lc8/Jyf;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/ryf;
    .param p2, "priority"    # I
    .param p4, "resultWrapper"    # Lc8/Jyf;
    .param p5, "isAllowedDirectRun"    # Z

    .prologue
    .line 37
    .local p0, "this":Lc8/qyf;, "Lcom/taobao/rxm/produce/BaseChainProducer$1;"
    .local p3, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    iput-object p1, p0, Lc8/qyf;->this$0:Lc8/ryf;

    invoke-direct {p0, p2, p3, p4, p5}, Lc8/Kyf;-><init>(ILc8/oyf;Lc8/Jyf;Z)V

    return-void
.end method


# virtual methods
.method public run(Lc8/oyf;Lc8/Jyf;)V
    .locals 1
    .param p1, "actionConsumer"    # Lc8/oyf;
    .param p2, "resultWrapper"    # Lc8/Jyf;

    .prologue
    .line 40
    .local p0, "this":Lc8/qyf;, "Lcom/taobao/rxm/produce/BaseChainProducer$1;"
    iget-object v0, p0, Lc8/qyf;->this$0:Lc8/ryf;

    invoke-static {v0, p1, p2, p0}, Lc8/ryf;->access$000(Lc8/ryf;Lc8/oyf;Lc8/Jyf;Lc8/Kyf;)V

    .line 41
    return-void
.end method
