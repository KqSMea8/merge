.class public Lc8/jyf;
.super Lc8/Kyf;
.source "BaseConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kyf;->scheduleConsumingResult(Lc8/Jyf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kyf;


# direct methods
.method constructor <init>(Lc8/kyf;ILc8/oyf;Lc8/Jyf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kyf;
    .param p2, "priority"    # I
    .param p4, "resultWrapper"    # Lc8/Jyf;

    .prologue
    .line 45
    .local p0, "this":Lc8/jyf;, "Lcom/taobao/rxm/consume/BaseConsumer$1;"
    .local p3, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<*+Lcom/taobao/rxm/request/RequestContext;>;"
    iput-object p1, p0, Lc8/jyf;->this$0:Lc8/kyf;

    invoke-direct {p0, p2, p3, p4}, Lc8/Kyf;-><init>(ILc8/oyf;Lc8/Jyf;)V

    return-void
.end method


# virtual methods
.method public run(Lc8/oyf;Lc8/Jyf;)V
    .locals 1
    .param p1, "consumer"    # Lc8/oyf;
    .param p2, "newResult"    # Lc8/Jyf;

    .prologue
    .line 48
    .local p0, "this":Lc8/jyf;, "Lcom/taobao/rxm/consume/BaseConsumer$1;"
    iget-object v0, p0, Lc8/jyf;->this$0:Lc8/kyf;

    invoke-static {v0, p2}, Lc8/kyf;->access$000(Lc8/kyf;Lc8/Jyf;)V

    .line 49
    return-void
.end method
