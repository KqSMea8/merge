.class public final Lc8/hoq;
.super Ljava/lang/Object;
.source "Functions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromAction(Lc8/hnq;)Lc8/Rnq;
    .locals 1
    .param p0, "f"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Rnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lc8/Unq;

    invoke-direct {v0, p0}, Lc8/Unq;-><init>(Lc8/hnq;)V

    return-object v0
.end method

.method public static fromAction(Lc8/inq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<-TT0;>;)",
            "Lc8/Rnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "f":Lc8/inq;, "Lrx/functions/Action1<-TT0;>;"
    new-instance v0, Lc8/Vnq;

    invoke-direct {v0, p0}, Lc8/Vnq;-><init>(Lc8/inq;)V

    return-object v0
.end method

.method public static fromAction(Lc8/jnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<-TT0;-TT1;>;)",
            "Lc8/Rnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "f":Lc8/jnq;, "Lrx/functions/Action2<-TT0;-TT1;>;"
    new-instance v0, Lc8/Wnq;

    invoke-direct {v0, p0}, Lc8/Wnq;-><init>(Lc8/jnq;)V

    return-object v0
.end method

.method public static fromAction(Lc8/knq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/knq",
            "<-TT0;-TT1;-TT2;>;)",
            "Lc8/Rnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "f":Lc8/knq;, "Lrx/functions/Action3<-TT0;-TT1;-TT2;>;"
    new-instance v0, Lc8/Xnq;

    invoke-direct {v0, p0}, Lc8/Xnq;-><init>(Lc8/knq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Hnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "f":Lc8/Hnq;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lc8/Ynq;

    invoke-direct {v0, p0}, Lc8/Ynq;-><init>(Lc8/Hnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Inq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-TT0;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "f":Lc8/Inq;, "Lrx/functions/Func1<-TT0;+TR;>;"
    new-instance v0, Lc8/Znq;

    invoke-direct {v0, p0}, Lc8/Znq;-><init>(Lc8/Inq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Jnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Jnq",
            "<-TT0;-TT1;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "f":Lc8/Jnq;, "Lrx/functions/Func2<-TT0;-TT1;+TR;>;"
    new-instance v0, Lc8/aoq;

    invoke-direct {v0, p0}, Lc8/aoq;-><init>(Lc8/Jnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Knq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Knq",
            "<-TT0;-TT1;-TT2;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "f":Lc8/Knq;, "Lrx/functions/Func3<-TT0;-TT1;-TT2;+TR;>;"
    new-instance v0, Lc8/boq;

    invoke-direct {v0, p0}, Lc8/boq;-><init>(Lc8/Knq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Lnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Lnq",
            "<-TT0;-TT1;-TT2;-TT3;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "f":Lc8/Lnq;, "Lrx/functions/Func4<-TT0;-TT1;-TT2;-TT3;+TR;>;"
    new-instance v0, Lc8/coq;

    invoke-direct {v0, p0}, Lc8/coq;-><init>(Lc8/Lnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Mnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mnq",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "f":Lc8/Mnq;, "Lrx/functions/Func5<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;"
    new-instance v0, Lc8/doq;

    invoke-direct {v0, p0}, Lc8/doq;-><init>(Lc8/Mnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Nnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Nnq",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "f":Lc8/Nnq;, "Lrx/functions/Func6<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    new-instance v0, Lc8/eoq;

    invoke-direct {v0, p0}, Lc8/eoq;-><init>(Lc8/Nnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Onq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Onq",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "f":Lc8/Onq;, "Lrx/functions/Func7<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    new-instance v0, Lc8/foq;

    invoke-direct {v0, p0}, Lc8/foq;-><init>(Lc8/Onq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Pnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Pnq",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "f":Lc8/Pnq;, "Lrx/functions/Func8<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    new-instance v0, Lc8/goq;

    invoke-direct {v0, p0}, Lc8/goq;-><init>(Lc8/Pnq;)V

    return-object v0
.end method

.method public static fromFunc(Lc8/Qnq;)Lc8/Rnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Qnq",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "f":Lc8/Qnq;, "Lrx/functions/Func9<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    new-instance v0, Lc8/Tnq;

    invoke-direct {v0, p0}, Lc8/Tnq;-><init>(Lc8/Qnq;)V

    return-object v0
.end method
