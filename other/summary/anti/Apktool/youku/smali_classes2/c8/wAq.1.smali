.class public final Lc8/wAq;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lc8/inq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Lc8/sAq;

    invoke-direct {v0, p0}, Lc8/sAq;-><init>(Lc8/inq;)V

    return-object v0
.end method

.method public static create(Lc8/inq;Lc8/inq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    new-instance v0, Lc8/tAq;

    invoke-direct {v0, p1, p0}, Lc8/tAq;-><init>(Lc8/inq;Lc8/inq;)V

    return-object v0
.end method

.method public static create(Lc8/inq;Lc8/inq;Lc8/hnq;)Lc8/Omq;
    .locals 2
    .param p2, "onComplete"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-TT;>;",
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lc8/hnq;",
            ")",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-nez p1, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    if-nez p2, :cond_2

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    new-instance v0, Lc8/uAq;

    invoke-direct {v0, p2, p1, p0}, Lc8/uAq;-><init>(Lc8/hnq;Lc8/inq;Lc8/inq;)V

    return-object v0
.end method

.method public static empty()Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lc8/lAq;->empty()Lc8/Wlq;

    move-result-object v0

    invoke-static {v0}, Lc8/wAq;->from(Lc8/Wlq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lc8/Wlq;)Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Wlq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "o":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lc8/rAq;

    invoke-direct {v0, p0}, Lc8/rAq;-><init>(Lc8/Wlq;)V

    return-object v0
.end method

.method public static wrap(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/vAq;

    invoke-direct {v0, p0, p0}, Lc8/vAq;-><init>(Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method
