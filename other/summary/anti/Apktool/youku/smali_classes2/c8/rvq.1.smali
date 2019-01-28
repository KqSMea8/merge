.class public Lc8/rvq;
.super Lc8/Omq;
.source "OperatorToMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tvq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/tvq;

.field final synthetic val$fLocalMap:Ljava/util/Map;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/tvq;Lc8/Omq;Ljava/util/Map;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lc8/rvq;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/rvq;->this$0:Lc8/tvq;

    iput-object p3, p0, Lc8/rvq;->val$fLocalMap:Ljava/util/Map;

    iput-object p4, p0, Lc8/rvq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 102
    iget-object v0, p0, Lc8/rvq;->val$fLocalMap:Ljava/util/Map;

    iput-object v0, p0, Lc8/rvq;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lc8/rvq;, "Lrx/internal/operators/OperatorToMap.1;"
    iget-object v0, p0, Lc8/rvq;->map:Ljava/util/Map;

    .line 134
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/rvq;->map:Ljava/util/Map;

    .line 135
    iget-object v1, p0, Lc8/rvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lc8/rvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 137
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    .local p0, "this":Lc8/rvq;, "Lrx/internal/operators/OperatorToMap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rvq;->map:Ljava/util/Map;

    .line 128
    iget-object v0, p0, Lc8/rvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lc8/rvq;, "Lrx/internal/operators/OperatorToMap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lc8/rvq;->this$0:Lc8/tvq;

    iget-object v3, v3, Lc8/tvq;->keySelector:Lc8/Inq;

    invoke-interface {v3, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lc8/rvq;->this$0:Lc8/tvq;

    iget-object v3, v3, Lc8/tvq;->valueSelector:Lc8/Inq;

    invoke-interface {v3, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 122
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lc8/rvq;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lc8/rvq;->val$subscriber:Lc8/Omq;

    invoke-static {v0, v3}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lc8/rvq;, "Lrx/internal/operators/OperatorToMap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/rvq;->request(J)V

    .line 107
    return-void
.end method
