.class public Lc8/JIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PIf;->onResponse(Ljava/lang/String;ILjava/util/Map;)V
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
        "Ljava/lang/String;",
        "Lc8/Vlq",
        "<",
        "Lc8/FIf;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PIf;

.field final synthetic val$dataId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/PIf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/PIf;

    .prologue
    .line 69
    .local p0, "this":Lc8/JIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$2;"
    iput-object p1, p0, Lc8/JIf;->this$0:Lc8/PIf;

    iput-object p2, p0, Lc8/JIf;->val$dataId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lc8/Vlq;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc8/Vlq",
            "<",
            "Lc8/FIf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lc8/JIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$2;"
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v0

    iget-object v1, p0, Lc8/JIf;->val$dataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/GIf;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lc8/JIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$2;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/JIf;->call(Ljava/lang/String;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
