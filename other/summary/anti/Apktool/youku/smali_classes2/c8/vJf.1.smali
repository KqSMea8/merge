.class public Lc8/vJf;
.super Ljava/lang/Object;
.source "MtopConnection.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wJf;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wJf;


# direct methods
.method constructor <init>(Lc8/wJf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wJf;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/vJf;->this$0:Lc8/wJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lc8/vJf;->call(Ljava/util/Map;)V

    return-void
.end method

.method public call(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "MtopConnection"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "send data map:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lc8/vJf;->this$0:Lc8/wJf;

    new-instance v1, Lc8/uJf;

    invoke-direct {v1, p0, p1}, Lc8/uJf;-><init>(Lc8/vJf;Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lc8/wJf;->request(Ljava/util/Map;Lc8/QJf;)V

    .line 142
    return-void
.end method
