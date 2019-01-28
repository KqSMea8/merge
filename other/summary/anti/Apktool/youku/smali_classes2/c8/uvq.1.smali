.class public Lc8/uvq;
.super Lc8/Omq;
.source "OperatorToMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xvq;->call(Lc8/Omq;)Lc8/Omq;
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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/xvq;

.field final synthetic val$fLocalMap:Ljava/util/Map;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/xvq;Lc8/Omq;Ljava/util/Map;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lc8/uvq;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/uvq;->this$0:Lc8/xvq;

    iput-object p3, p0, Lc8/uvq;->val$fLocalMap:Ljava/util/Map;

    iput-object p4, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 138
    iget-object v0, p0, Lc8/uvq;->val$fLocalMap:Ljava/util/Map;

    iput-object v0, p0, Lc8/uvq;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 179
    .local p0, "this":Lc8/uvq;, "Lrx/internal/operators/OperatorToMultimap.1;"
    iget-object v0, p0, Lc8/uvq;->map:Ljava/util/Map;

    .line 180
    .local v0, "map0":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/uvq;->map:Ljava/util/Map;

    .line 181
    iget-object v1, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 183
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 173
    .local p0, "this":Lc8/uvq;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/uvq;->map:Ljava/util/Map;

    .line 174
    iget-object v0, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lc8/uvq;, "Lrx/internal/operators/OperatorToMultimap.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lc8/uvq;->this$0:Lc8/xvq;

    iget-object v4, v4, Lc8/xvq;->keySelector:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lc8/uvq;->this$0:Lc8/xvq;

    iget-object v4, v4, Lc8/xvq;->valueSelector:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 158
    .local v3, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lc8/uvq;->map:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 159
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 161
    :try_start_1
    iget-object v4, p0, Lc8/uvq;->this$0:Lc8/xvq;

    iget-object v4, v4, Lc8/xvq;->collectionFactory:Lc8/Inq;

    invoke-interface {v4, v2}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast v0, Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v4, p0, Lc8/uvq;->map:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-static {v1, v4}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0

    .line 162
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    :catch_1
    move-exception v1

    .line 163
    .restart local v1    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/uvq;->val$subscriber:Lc8/Omq;

    invoke-static {v1, v4}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 142
    .local p0, "this":Lc8/uvq;, "Lrx/internal/operators/OperatorToMultimap.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/uvq;->request(J)V

    .line 143
    return-void
.end method
