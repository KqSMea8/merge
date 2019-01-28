.class public final Lc8/wBq;
.super Lc8/GBq;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field private final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lc8/wBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 76
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/wBq;->nl:Lc8/cpq;

    .line 121
    iput-object p2, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 122
    return-void
.end method

.method public static create()Lc8/wBq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/wBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/wBq;->create(Ljava/lang/Object;Z)Lc8/wBq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;)Lc8/wBq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lc8/wBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc8/wBq;->create(Ljava/lang/Object;Z)Lc8/wBq;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Z)Lc8/wBq;
    .locals 2
    .param p1, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lc8/wBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 104
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    if-eqz p1, :cond_0

    .line 105
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 107
    :cond_0
    new-instance v1, Lc8/vBq;

    invoke-direct {v1, v0}, Lc8/vBq;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    .line 115
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    .line 116
    new-instance v1, Lc8/wBq;

    invoke-direct {v1, v0, v0}, Lc8/wBq;-><init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 220
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    sget-object v1, Lc8/wBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lc8/wBq;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lc8/wBq;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 274
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    array-length v1, p1

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 249
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v3

    .line 250
    array-length v1, p1

    if-le v1, v2, :cond_1

    .line 251
    aput-object v4, p1, v2

    .line 257
    :cond_1
    :goto_0
    return-object p1

    .line 254
    :cond_2
    array-length v1, p1

    if-lez v1, :cond_1

    .line 255
    aput-object v4, p1, v3

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isNext(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onCompleted()V
    .locals 7

    .prologue
    .line 126
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v3

    .line 127
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_1

    .line 128
    :cond_0
    iget-object v6, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v6}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v5

    .line 129
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 130
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {v1, v5, v6}, Lc8/JBq;->emitNext(Ljava/lang/Object;Lc8/cpq;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v8, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v5

    .line 138
    .local v5, "last":Ljava/lang/Object;
    if-eqz v5, :cond_0

    iget-object v8, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v8, v8, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v8, :cond_3

    .line 139
    :cond_0
    iget-object v8, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v8, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    .line 140
    .local v7, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 141
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v8, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8, v7}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 143
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    iget-object v8, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v8, v8, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {v1, v7, v8}, Lc8/JBq;->emitNext(Ljava/lang/Object;Lc8/cpq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_1

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_2
    invoke-static {v3}, Lc8/fnq;->throwIfAny(Ljava/util/List;)V

    .line 154
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v3

    .line 159
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_1

    .line 160
    :cond_0
    iget-object v6, p0, Lc8/wBq;->nl:Lc8/cpq;

    invoke-virtual {v6, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->next(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 162
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {v1, v5, v6}, Lc8/JBq;->emitNext(Ljava/lang/Object;Lc8/cpq;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lc8/wBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
