.class public final Lc8/lAq;
.super Ljava/lang/Object;
.source "Observers.java"


# static fields
.field private static final EMPTY:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lc8/hAq;

    invoke-direct {v0}, Lc8/hAq;-><init>()V

    sput-object v0, Lc8/lAq;->EMPTY:Lc8/Wlq;

    return-void
.end method

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

.method public static create(Lc8/inq;)Lc8/Wlq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-TT;>;)",
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Lc8/iAq;

    invoke-direct {v0, p0}, Lc8/iAq;-><init>(Lc8/inq;)V

    return-object v0
.end method

.method public static create(Lc8/inq;Lc8/inq;)Lc8/Wlq;
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
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Lc8/jAq;

    invoke-direct {v0, p1, p0}, Lc8/jAq;-><init>(Lc8/inq;Lc8/inq;)V

    return-object v0
.end method

.method public static create(Lc8/inq;Lc8/inq;Lc8/hnq;)Lc8/Wlq;
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
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "onNext":Lc8/inq;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lc8/inq;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    if-nez p1, :cond_1

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    if-nez p2, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Lc8/kAq;

    invoke-direct {v0, p2, p1, p0}, Lc8/kAq;-><init>(Lc8/hnq;Lc8/inq;Lc8/inq;)V

    return-object v0
.end method

.method public static empty()Lc8/Wlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lc8/lAq;->EMPTY:Lc8/Wlq;

    return-object v0
.end method
