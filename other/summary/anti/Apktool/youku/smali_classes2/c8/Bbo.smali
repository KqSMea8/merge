.class public Lc8/Bbo;
.super Ljava/lang/Object;
.source "IStreamPagePrestener.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dbo;->executeDefault(Lc8/Vlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TT;",
        "Lc8/Ibo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dbo;


# direct methods
.method constructor <init>(Lc8/Dbo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Dbo;

    .prologue
    .line 178
    .local p0, "this":Lc8/Bbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener$1;"
    iput-object p1, p0, Lc8/Bbo;->this$0:Lc8/Dbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Lc8/Ibo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Ibo;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lc8/Bbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/Ibo;

    invoke-direct {v0}, Lc8/Ibo;-><init>()V

    .line 183
    .local v0, "pageResponse":Lc8/Ibo;
    iget-object v1, p0, Lc8/Bbo;->this$0:Lc8/Dbo;

    invoke-virtual {v1, p1}, Lc8/Dbo;->mapper(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc8/Ibo;->t:Ljava/util/List;

    .line 184
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lc8/Bbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener$1;"
    invoke-virtual {p0, p1}, Lc8/Bbo;->call(Ljava/lang/Object;)Lc8/Ibo;

    move-result-object v0

    return-object v0
.end method
