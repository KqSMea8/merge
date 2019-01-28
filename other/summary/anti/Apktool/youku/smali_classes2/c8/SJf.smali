.class public Lc8/SJf;
.super Ljava/lang/Object;
.source "PausableBuffer.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TJf;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Ljava/util/List",
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/TJf;


# direct methods
.method constructor <init>(Lc8/TJf;)V
    .locals 0
    .param p1, "this$1"    # Lc8/TJf;

    .prologue
    .line 39
    .local p0, "this":Lc8/SJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer$1$1;"
    iput-object p1, p0, Lc8/SJf;->this$1:Lc8/TJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/SJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer$1$1;"
    .local p1, "s":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lc8/SJf;->this$1:Lc8/TJf;

    iget-object v0, v0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v0}, Lc8/UJf;->access$000(Lc8/UJf;)Lc8/Pmq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/SJf;->this$1:Lc8/TJf;

    iget-object v0, v0, Lc8/TJf;->this$0:Lc8/UJf;

    invoke-static {v0}, Lc8/UJf;->access$000(Lc8/UJf;)Lc8/Pmq;

    move-result-object v0

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 44
    iget-object v0, p0, Lc8/SJf;->this$1:Lc8/TJf;

    iget-object v0, v0, Lc8/TJf;->this$0:Lc8/UJf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/UJf;->access$002(Lc8/UJf;Lc8/Pmq;)Lc8/Pmq;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lc8/SJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer$1$1;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc8/SJf;->call(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
