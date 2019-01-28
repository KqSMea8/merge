.class public Lc8/pJf;
.super Ljava/lang/Object;
.source "AccsConnection.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Ljava/util/List",
        "<",
        "Lc8/RJf;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rJf;


# direct methods
.method constructor <init>(Lc8/rJf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rJf;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/pJf;->this$0:Lc8/rJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc8/pJf;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/pJf;->this$0:Lc8/rJf;

    invoke-virtual {v0}, Lc8/rJf;->getConverter2Data()Lc8/MIf;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    iget-object v1, p0, Lc8/pJf;->this$0:Lc8/rJf;

    invoke-virtual {v1}, Lc8/rJf;->getConverter2Data()Lc8/MIf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->compose(Lc8/Ulq;)Lc8/Vlq;

    move-result-object v0

    new-instance v1, Lc8/oJf;

    invoke-direct {v1, p0}, Lc8/oJf;-><init>(Lc8/pJf;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    goto :goto_0
.end method
