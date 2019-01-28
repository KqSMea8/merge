.class public Lc8/rbf;
.super Lc8/Tcf;
.source "PanguInitializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bbf;->startInitializersAnnotatedBy(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bbf;

.field final synthetic val$p1:I


# direct methods
.method constructor <init>(Lc8/Bbf;Ljava/lang/String;I)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lc8/rbf;->this$0:Lc8/Bbf;

    iput p3, p0, Lc8/rbf;->val$p1:I

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 201
    iget-object v6, p0, Lc8/rbf;->this$0:Lc8/Bbf;

    iget-object v6, v6, Lc8/Bbf;->mGlobalFlowInitializers:Landroid/util/SparseArray;

    iget v7, p0, Lc8/rbf;->val$p1:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 202
    .local v5, "slist":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/reflect/Method;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 203
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 204
    .local v4, "priority":I
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 205
    .local v2, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 206
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    new-instance v6, Lc8/qbf;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v3}, Lc8/qbf;-><init>(Lc8/rbf;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-static {v6}, Lc8/Vcf;->runTask(Lc8/Tcf;)V

    goto :goto_1

    .line 202
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v4    # "priority":I
    :cond_1
    return-void
.end method
