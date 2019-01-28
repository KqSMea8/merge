.class public Lc8/gyf;
.super Ljava/lang/Object;
.source "ChainProducerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEnableGenericTypeCheck:Z

.field private final mHeadProducer:Lc8/uyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/uyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation
.end field

.field private mTailProducer:Lc8/syf;


# direct methods
.method public constructor <init>(Lc8/syf;Z)V
    .locals 2
    .param p2, "enableGenericTypeCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NEXT_OUT::",
            "Lc8/iyf;",
            ">(",
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lc8/gyf;, "Lcom/taobao/rxm/common/ChainProducerBuilder<TOUT;TCONTEXT;>;"
    .local p1, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-boolean p2, p0, Lc8/gyf;->mEnableGenericTypeCheck:Z

    .line 20
    iget-boolean v0, p0, Lc8/gyf;->mEnableGenericTypeCheck:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/syf;->maySkipResultConsume()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/syf;->getOutType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lc8/syf;->getNextOutType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Lc8/syf;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/gyf;->throwConsumeTypeError(Ljava/lang/String;)V

    .line 23
    :cond_0
    iput-object p1, p0, Lc8/gyf;->mHeadProducer:Lc8/uyf;

    .line 24
    iput-object p1, p0, Lc8/gyf;->mTailProducer:Lc8/syf;

    .line 26
    return-void
.end method

.method public static newBuilderWithHead(Lc8/syf;)Lc8/gyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "NEXT_O::",
            "Lc8/iyf;",
            "CONTEXT:",
            "Lc8/zyf;",
            ">(",
            "Lc8/syf",
            "<TO;TNEXT_O;TCONTEXT;>;)",
            "Lc8/gyf",
            "<TO;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TO;TNEXT_O;TCONTEXT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc8/gyf;->newBuilderWithHead(Lc8/syf;Z)Lc8/gyf;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilderWithHead(Lc8/syf;Z)Lc8/gyf;
    .locals 1
    .param p1, "enableGenericTypeCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "NEXT_O::",
            "Lc8/iyf;",
            "CONTEXT:",
            "Lc8/zyf;",
            ">(",
            "Lc8/syf",
            "<TO;TNEXT_O;TCONTEXT;>;Z)",
            "Lc8/gyf",
            "<TO;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TO;TNEXT_O;TCONTEXT;>;"
    new-instance v0, Lc8/gyf;

    invoke-direct {v0, p0, p1}, Lc8/gyf;-><init>(Lc8/syf;Z)V

    return-object v0
.end method


# virtual methods
.method public build()Lc8/uyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/uyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/gyf;, "Lcom/taobao/rxm/common/ChainProducerBuilder<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/gyf;->mHeadProducer:Lc8/uyf;

    return-object v0
.end method

.method public next(Lc8/syf;)Lc8/gyf;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NEXT_O:",
            "Ljava/lang/Object;",
            "NN_O::",
            "Lc8/iyf;",
            ">(",
            "Lc8/syf",
            "<TNEXT_O;TNN_O;TCONTEXT;>;)",
            "Lc8/gyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/gyf;, "Lcom/taobao/rxm/common/ChainProducerBuilder<TOUT;TCONTEXT;>;"
    .local p1, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TNEXT_O;TNN_O;TCONTEXT;>;"
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-boolean v2, p0, Lc8/gyf;->mEnableGenericTypeCheck:Z

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p1}, Lc8/syf;->getOutType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 46
    .local v1, "outType":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lc8/syf;->maySkipResultConsume()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lc8/syf;->getNextOutType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 47
    invoke-virtual {p1}, Lc8/syf;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/gyf;->throwConsumeTypeError(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v2, p0, Lc8/gyf;->mTailProducer:Lc8/syf;

    invoke-virtual {v2}, Lc8/syf;->getNextOutType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 52
    .local v0, "nextOutType":Ljava/lang/reflect/Type;
    if-eq v0, v1, :cond_1

    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NEXT_OUT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of last producer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/gyf;->mTailProducer:Lc8/syf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") not equal OUT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of next producer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v0    # "nextOutType":Ljava/lang/reflect/Type;
    .end local v1    # "outType":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v2, p0, Lc8/gyf;->mTailProducer:Lc8/syf;

    invoke-virtual {v2, p1}, Lc8/syf;->setNextProducer(Lc8/syf;)Lc8/syf;

    move-result-object v2

    iput-object v2, p0, Lc8/gyf;->mTailProducer:Lc8/syf;

    .line 57
    return-object p0
.end method

.method public throwConsumeTypeError(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lc8/gyf;, "Lcom/taobao/rxm/common/ChainProducerBuilder<TOUT;TCONTEXT;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " skip to consume new result, require OUT class must equal NEXT_OUT class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
