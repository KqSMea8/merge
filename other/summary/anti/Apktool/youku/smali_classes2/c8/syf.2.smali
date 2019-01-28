.class public abstract Lc8/syf;
.super Ljava/lang/Object;
.source "ChainProducer.java"

# interfaces
.implements Lc8/lyf;
.implements Lc8/uyf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT::",
        "Lc8/iyf;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/lyf",
        "<TOUT;TNEXT_OUT;TCONTEXT;>;",
        "Lc8/uyf",
        "<TOUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private mConsumeScheduler:Lc8/Nyf;

.field private final mConsumeType:Lc8/nyf;

.field private mGenericTypes:[Ljava/lang/reflect/Type;

.field private final mName:Ljava/lang/String;

.field private mNextProducer:Lc8/uyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/uyf",
            "<TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end field

.field private mProduceScheduler:Lc8/Nyf;

.field private final mProduceType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "produceType"    # I
    .param p3, "consumeType"    # I

    .prologue
    .line 35
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lc8/syf;->getDefaultName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/syf;->mName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lc8/syf;->mProduceType:I

    .line 38
    new-instance v0, Lc8/nyf;

    invoke-direct {v0, p3}, Lc8/nyf;-><init>(I)V

    iput-object v0, p0, Lc8/syf;->mConsumeType:Lc8/nyf;

    .line 39
    return-void
.end method

.method private ensureGenericTypes()Z
    .locals 5

    .prologue
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;

    if-nez v1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v3

    .line 148
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "RxSysLog"

    const-string/jumbo v4, "chain producer get generic types error=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 145
    goto :goto_0
.end method

.method private getDefaultName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 50
    :goto_0
    return-object v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 46
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 47
    .local v0, "dot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 48
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 50
    goto :goto_0
.end method

.method private isChainEndNode()Z
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget v0, p0, Lc8/syf;->mProduceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProduceFinish(Lc8/oyf;ZZZ)V
    .locals 6
    .param p2, "isConsumer"    # Z
    .param p3, "isSuccess"    # Z
    .param p4, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->getProducerListener()Lc8/vyf;

    move-result-object v0

    .line 74
    .local v0, "producerListener":Lc8/vyf;
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lc8/vyf;->onExitOut(Lc8/zyf;Ljava/lang/Class;ZZZ)V

    .line 77
    :cond_0
    return-void
.end method

.method private onProduceStart(Lc8/oyf;ZZ)V
    .locals 3
    .param p2, "isConsumer"    # Z
    .param p3, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->getProducerListener()Lc8/vyf;

    move-result-object v0

    .line 66
    .local v0, "producerListener":Lc8/vyf;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lc8/vyf;->onEnterIn(Lc8/zyf;Ljava/lang/Class;ZZ)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected conductResult(Lc8/oyf;Lc8/Kyf;)Z
    .locals 1
    .param p2, "currentAction"    # Lc8/Kyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Kyf;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-virtual {p0, p1}, Lc8/syf;->conductResult(Lc8/oyf;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic consumeOn(Lc8/Nyf;)Lc8/lyf;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-virtual {p0, p1}, Lc8/syf;->consumeOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v0

    return-object v0
.end method

.method public consumeOn(Lc8/Nyf;)Lc8/syf;
    .locals 0
    .param p1, "scheduler"    # Lc8/Nyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iput-object p1, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    .line 125
    return-object p0
.end method

.method public getConsumeScheduler()Lc8/Nyf;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public getConsumeType()Lc8/nyf;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/syf;->mConsumeType:Lc8/nyf;

    return-object v0
.end method

.method public abstract getDelegateConsumerPool()Lc8/pyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/pyf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/syf;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextOutType()Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/4 v2, 0x1

    .line 159
    invoke-direct {p0}, Lc8/syf;->ensureGenericTypes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    const-class v1, Lc8/zyf;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    goto :goto_0
.end method

.method public getNextProducer()Lc8/uyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/uyf",
            "<TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/syf;->mNextProducer:Lc8/uyf;

    return-object v0
.end method

.method public getOutType()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0}, Lc8/syf;->ensureGenericTypes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/syf;->mGenericTypes:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getProduceScheduler()Lc8/Nyf;
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/syf;->mProduceScheduler:Lc8/Nyf;

    return-object v0
.end method

.method public getProduceType()I
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget v0, p0, Lc8/syf;->mProduceType:I

    return v0
.end method

.method public maySkipResultConsume()Z
    .locals 2

    .prologue
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Lc8/syf;->isChainEndNode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/nyf;->activeOn(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConductFinish(Lc8/oyf;Z)V
    .locals 1
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, p2, v0}, Lc8/syf;->onProduceFinish(Lc8/oyf;ZZZ)V

    .line 85
    return-void
.end method

.method protected onConductStart(Lc8/oyf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lc8/syf;->onProduceStart(Lc8/oyf;ZZ)V

    .line 81
    return-void
.end method

.method protected onConsumeFinish(Lc8/oyf;ZZ)V
    .locals 1
    .param p2, "isSuccess"    # Z
    .param p3, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lc8/syf;->onProduceFinish(Lc8/oyf;ZZZ)V

    .line 93
    return-void
.end method

.method protected onConsumeStart(Lc8/oyf;Z)V
    .locals 1
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lc8/syf;->onProduceStart(Lc8/oyf;ZZ)V

    .line 89
    return-void
.end method

.method public produceOn(Lc8/Nyf;)Lc8/syf;
    .locals 0
    .param p1, "scheduler"    # Lc8/Nyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iput-object p1, p0, Lc8/syf;->mProduceScheduler:Lc8/Nyf;

    .line 119
    return-object p0
.end method

.method public bridge synthetic produceOn(Lc8/Nyf;)Lc8/uyf;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-virtual {p0, p1}, Lc8/syf;->produceOn(Lc8/Nyf;)Lc8/syf;

    move-result-object v0

    return-object v0
.end method

.method public scheduleCancellation(Lc8/oyf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 202
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    iget-object v1, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    invoke-virtual {p0, v1, p1, v0}, Lc8/syf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;)V

    .line 203
    return-void
.end method

.method protected scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;)V
    .locals 1
    .param p1, "scheduler"    # Lc8/Nyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Jyf",
            "<TNEXT_OUT;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "scheduleWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/syf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;Z)V

    .line 213
    return-void
.end method

.method protected abstract scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Jyf",
            "<TNEXT_OUT;>;Z)V"
        }
    .end annotation
.end method

.method public scheduleFailure(Lc8/oyf;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 207
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    iput-object p2, v0, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    .line 208
    iget-object v1, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    invoke-virtual {p0, v1, p1, v0}, Lc8/syf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;)V

    .line 209
    return-void
.end method

.method public scheduleNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 1
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZTNEXT_OUT;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "interResult":Lc8/iyf;, "TNEXT_OUT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/syf;->scheduleNewResult(Lc8/oyf;ZLc8/iyf;Z)V

    .line 192
    return-void
.end method

.method public scheduleNewResult(Lc8/oyf;ZLc8/iyf;Z)V
    .locals 2
    .param p2, "isLast"    # Z
    .param p4, "isAllowedDirectRun"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZTNEXT_OUT;Z)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "interResult":Lc8/iyf;, "TNEXT_OUT;"
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc8/Jyf;-><init>(IZ)V

    .line 186
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    iput-object p3, v0, Lc8/Jyf;->newResult:Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    invoke-virtual {p0, v1, p1, v0, p4}, Lc8/syf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;Z)V

    .line 188
    return-void
.end method

.method public scheduleProgressUpdate(Lc8/oyf;F)V
    .locals 3
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;F)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 196
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    iput p2, v0, Lc8/Jyf;->progress:F

    .line 197
    iget-object v1, p0, Lc8/syf;->mConsumeScheduler:Lc8/Nyf;

    invoke-virtual {p0, v1, p1, v0}, Lc8/syf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;)V

    .line 198
    return-void
.end method

.method public setNextProducer(Lc8/syf;)Lc8/syf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NN_OUT::",
            "Lc8/iyf;",
            ">(",
            "Lc8/syf",
            "<TNEXT_OUT;TNN_OUT;TCONTEXT;>;)",
            "Lc8/syf;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "nextProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TNEXT_OUT;TNN_OUT;TCONTEXT;>;"
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Lc8/syf;->mNextProducer:Lc8/uyf;

    .line 176
    return-object p1
.end method
