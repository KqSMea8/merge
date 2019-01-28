.class public final Lc8/hpq;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gpq;,
        Lc8/fpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lc8/hpq;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lc8/hpq;->sources:Ljava/lang/Iterable;

    .line 365
    return-void
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;Lc8/Vlq;)Lc8/Rlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "o1":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "sources":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+TT;>;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {v0}, Lc8/hpq;->amb(Ljava/lang/Iterable;)Lc8/Rlq;

    move-result-object v1

    return-object v1
.end method

.method public static amb(Ljava/lang/Iterable;)Lc8/Rlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lc8/Vlq",
            "<+TT;>;>;)",
            "Lc8/Rlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    new-instance v0, Lc8/hpq;

    invoke-direct {v0, p0}, Lc8/hpq;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method static unsubscribeAmbSubscribers(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lc8/fpq",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, "ambSubscribers":Ljava/util/Collection;, "Ljava/util/Collection<Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 445
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fpq;

    .line 446
    .local v1, "other":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v1}, Lc8/fpq;->unsubscribe()V

    goto :goto_0

    .line 448
    .end local v1    # "other":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 450
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lc8/hpq;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v4, Lc8/gpq;

    invoke-direct {v4}, Lc8/gpq;-><init>()V

    .line 370
    .local v4, "selection":Lc8/gpq;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    iget-object v2, v4, Lc8/gpq;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    .line 373
    .local v2, "choice":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;>;"
    new-instance v6, Lc8/dpq;

    invoke-direct {v6, p0, v2, v4}, Lc8/dpq;-><init>(Lc8/hpq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/gpq;)V

    invoke-static {v6}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v6

    invoke-virtual {p1, v6}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 392
    iget-object v6, p0, Lc8/hpq;->sources:Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Vlq;

    .line 393
    .local v5, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    new-instance v0, Lc8/fpq;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7, p1, v4}, Lc8/fpq;-><init>(JLc8/Omq;Lc8/gpq;)V

    .line 397
    .local v0, "ambSubscriber":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    iget-object v6, v4, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fpq;

    .local v1, "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v4, v1}, Lc8/gpq;->unsubscribeOthers(Lc8/fpq;)V

    .line 441
    .end local v0    # "ambSubscriber":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .end local v1    # "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .end local v5    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :goto_1
    return-void

    .line 407
    .restart local v0    # "ambSubscriber":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .restart local v1    # "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .restart local v5    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :cond_0
    invoke-virtual {v5, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0

    .line 410
    .end local v0    # "ambSubscriber":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .end local v1    # "c":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    .end local v5    # "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    :cond_1
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 411
    iget-object v6, v4, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-static {v6}, Lc8/hpq;->unsubscribeAmbSubscribers(Ljava/util/Collection;)V

    .line 414
    :cond_2
    new-instance v6, Lc8/epq;

    invoke-direct {v6, p0, v2, v4}, Lc8/epq;-><init>(Lc8/hpq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/gpq;)V

    invoke-virtual {p1, v6}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/hpq;, "Lrx/internal/operators/OnSubscribeAmb<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hpq;->call(Lc8/Omq;)V

    return-void
.end method
