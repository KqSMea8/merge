.class public Lc8/TJf;
.super Ljava/lang/Object;
.source "PausableBuffer.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UJf;->subscribe(Lc8/inq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UJf;

.field final synthetic val$observer:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/UJf;Lc8/inq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UJf;

    .prologue
    .line 35
    .local p0, "this":Lc8/TJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer$1;"
    iput-object p1, p0, Lc8/TJf;->this$0:Lc8/UJf;

    iput-object p2, p0, Lc8/TJf;->val$observer:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/TJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer$1;"
    .local p1, "s":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v0}, Lc8/UJf;->access$000(Lc8/UJf;)Lc8/Pmq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lc8/TJf;->this$0:Lc8/UJf;

    iget-object v1, p0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v1}, Lc8/UJf;->access$200(Lc8/UJf;)Lc8/yBq;

    move-result-object v1

    iget-object v2, p0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v2}, Lc8/UJf;->access$100(Lc8/UJf;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lc8/yBq;->buffer(JLjava/util/concurrent/TimeUnit;)Lc8/Vlq;

    move-result-object v1

    new-instance v2, Lc8/SJf;

    invoke-direct {v2, p0}, Lc8/SJf;-><init>(Lc8/TJf;)V

    invoke-virtual {v1, v2}, Lc8/Vlq;->filter(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    iget-object v2, p0, Lc8/TJf;->val$observer:Lc8/inq;

    .line 49
    invoke-virtual {v1, v2}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lc8/UJf;->access$002(Lc8/UJf;Lc8/Pmq;)Lc8/Pmq;

    .line 51
    :cond_0
    iget-object v0, p0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v0}, Lc8/UJf;->access$200(Lc8/UJf;)Lc8/yBq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/yBq;->onNext(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
