.class public Lc8/Xxq;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yxq;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Yxq;


# direct methods
.method constructor <init>(Lc8/Yxq;)V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lc8/Xxq;, "Lrx/internal/util/ObjectPool.1;"
    iput-object p1, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 117
    .local p0, "this":Lc8/Xxq;, "Lrx/internal/util/ObjectPool.1;"
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget-object v4, v4, Lc8/Yxq;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v1

    .line 118
    .local v1, "size":I
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget v4, v4, Lc8/Yxq;->minSize:I

    if-ge v1, v4, :cond_0

    .line 119
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget v4, v4, Lc8/Yxq;->maxSize:I

    sub-int v2, v4, v1

    .line 120
    .local v2, "sizeToBeAdded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 121
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget-object v4, v4, Lc8/Yxq;->pool:Ljava/util/Queue;

    iget-object v5, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    invoke-virtual {v5}, Lc8/Yxq;->createObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v2    # "sizeToBeAdded":I
    :cond_0
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget v4, v4, Lc8/Yxq;->maxSize:I

    if-le v1, v4, :cond_1

    .line 124
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget v4, v4, Lc8/Yxq;->maxSize:I

    sub-int v3, v1, v4

    .line 125
    .local v3, "sizeToBeRemoved":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 127
    iget-object v4, p0, Lc8/Xxq;->this$0:Lc8/Yxq;

    iget-object v4, v4, Lc8/Yxq;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "i":I
    .end local v3    # "sizeToBeRemoved":I
    :cond_1
    return-void
.end method
