.class public Lc8/LIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PIf;->onReceive(Lc8/OIf;)V
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
        "<",
        "Lc8/RJf;",
        ">;",
        "Lc8/Vlq",
        "<",
        "Lc8/RJf;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PIf;


# direct methods
.method constructor <init>(Lc8/PIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/PIf;

    .prologue
    .line 109
    .local p0, "this":Lc8/LIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$4;"
    iput-object p1, p0, Lc8/LIf;->this$0:Lc8/PIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/List;)Lc8/Vlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/RJf;",
            ">;)",
            "Lc8/Vlq",
            "<",
            "Lc8/RJf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lc8/LIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$4;"
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/core/model/Package;>;"
    const-string/jumbo v0, "BaseConnection"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "parse msgs:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {p1}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lc8/LIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$4;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc8/LIf;->call(Ljava/util/List;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
