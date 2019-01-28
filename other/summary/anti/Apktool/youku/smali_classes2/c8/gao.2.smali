.class public Lc8/gao;
.super Ljava/lang/Object;
.source "ADataSource.java"

# interfaces
.implements Lc8/zgq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hao;->wrapperCallback(Lc8/bao;)Lc8/zgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/zgq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hao;

.field final synthetic val$wrapper:Lc8/bao;


# direct methods
.method constructor <init>(Lc8/hao;Lc8/bao;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hao;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/gao;->this$0:Lc8/hao;

    iput-object p2, p0, Lc8/gao;->val$wrapper:Lc8/bao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 93
    iget-object v0, p0, Lc8/gao;->val$wrapper:Lc8/bao;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/gao;->val$wrapper:Lc8/bao;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1, v2}, Lc8/bao;->onFailure(Lc8/aao;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public success(Lc8/sao;Lc8/Whq;)V
    .locals 3
    .param p2, "response"    # Lc8/Whq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Whq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "t":Lc8/sao;, "TT;"
    iget-object v0, p0, Lc8/gao;->val$wrapper:Lc8/bao;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/gao;->val$wrapper:Lc8/bao;

    const/4 v1, 0x0

    new-instance v2, Lc8/dao;

    invoke-direct {v2, p2, p1}, Lc8/dao;-><init>(Lc8/Whq;Lc8/sao;)V

    invoke-interface {v0, v1, v2}, Lc8/bao;->onResponse(Lc8/aao;Lc8/eao;)V

    .line 89
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lc8/Whq;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lc8/sao;

    invoke-virtual {p0, p1, p2}, Lc8/gao;->success(Lc8/sao;Lc8/Whq;)V

    return-void
.end method
