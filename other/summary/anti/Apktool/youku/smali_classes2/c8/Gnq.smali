.class public final Lc8/Gnq;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Enq;,
        Lc8/Fnq;
    }
.end annotation


# static fields
.field private static final EMPTY_ACTION:Lc8/Fnq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lc8/Fnq;

    invoke-direct {v0}, Lc8/Fnq;-><init>()V

    sput-object v0, Lc8/Gnq;->EMPTY_ACTION:Lc8/Fnq;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty()Lc8/Fnq;
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
            ">()",
            "Lc8/Fnq",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lc8/Gnq;->EMPTY_ACTION:Lc8/Fnq;

    return-object v0
.end method

.method public static toAction1(Lc8/hnq;)Lc8/inq;
    .locals 1
    .param p0, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/hnq;",
            ")",
            "Lc8/inq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lc8/Enq;

    invoke-direct {v0, p0}, Lc8/Enq;-><init>(Lc8/hnq;)V

    return-object v0
.end method

.method public static toFunc(Lc8/hnq;)Lc8/Hnq;
    .locals 1
    .param p0, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hnq;",
            ")",
            "Lc8/Hnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/hnq;Ljava/lang/Object;)Lc8/Hnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/hnq;Ljava/lang/Object;)Lc8/Hnq;
    .locals 1
    .param p0, "action"    # Lc8/hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/hnq;",
            "TR;)",
            "Lc8/Hnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/vnq;

    invoke-direct {v0, p0, p1}, Lc8/vnq;-><init>(Lc8/hnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/inq;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<TT1;>;)",
            "Lc8/Inq",
            "<TT1;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "action":Lc8/inq;, "Lrx/functions/Action1<TT1;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/inq;Ljava/lang/Object;)Lc8/Inq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/inq;Ljava/lang/Object;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/inq",
            "<TT1;>;TR;)",
            "Lc8/Inq",
            "<TT1;TR;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "action":Lc8/inq;, "Lrx/functions/Action1<TT1;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/wnq;

    invoke-direct {v0, p0, p1}, Lc8/wnq;-><init>(Lc8/inq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/jnq;)Lc8/Jnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<TT1;TT2;>;)",
            "Lc8/Jnq",
            "<TT1;TT2;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "action":Lc8/jnq;, "Lrx/functions/Action2<TT1;TT2;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/jnq;Ljava/lang/Object;)Lc8/Jnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/jnq;Ljava/lang/Object;)Lc8/Jnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<TT1;TT2;>;TR;)",
            "Lc8/Jnq",
            "<TT1;TT2;TR;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "action":Lc8/jnq;, "Lrx/functions/Action2<TT1;TT2;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/xnq;

    invoke-direct {v0, p0, p1}, Lc8/xnq;-><init>(Lc8/jnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/knq;)Lc8/Knq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/knq",
            "<TT1;TT2;TT3;>;)",
            "Lc8/Knq",
            "<TT1;TT2;TT3;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "action":Lc8/knq;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/knq;Ljava/lang/Object;)Lc8/Knq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/knq;Ljava/lang/Object;)Lc8/Knq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/knq",
            "<TT1;TT2;TT3;>;TR;)",
            "Lc8/Knq",
            "<TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "action":Lc8/knq;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/ynq;

    invoke-direct {v0, p0, p1}, Lc8/ynq;-><init>(Lc8/knq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/lnq;)Lc8/Lnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/lnq",
            "<TT1;TT2;TT3;TT4;>;)",
            "Lc8/Lnq",
            "<TT1;TT2;TT3;TT4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "action":Lc8/lnq;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/lnq;Ljava/lang/Object;)Lc8/Lnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/lnq;Ljava/lang/Object;)Lc8/Lnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lc8/lnq",
            "<TT1;TT2;TT3;TT4;>;TR;)",
            "Lc8/Lnq",
            "<TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "action":Lc8/lnq;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/znq;

    invoke-direct {v0, p0, p1}, Lc8/znq;-><init>(Lc8/lnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/mnq;)Lc8/Mnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/mnq",
            "<TT1;TT2;TT3;TT4;TT5;>;)",
            "Lc8/Mnq",
            "<TT1;TT2;TT3;TT4;TT5;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "action":Lc8/mnq;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/mnq;Ljava/lang/Object;)Lc8/Mnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/mnq;Ljava/lang/Object;)Lc8/Mnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lc8/mnq",
            "<TT1;TT2;TT3;TT4;TT5;>;TR;)",
            "Lc8/Mnq",
            "<TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "action":Lc8/mnq;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/Anq;

    invoke-direct {v0, p0, p1}, Lc8/Anq;-><init>(Lc8/mnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/nnq;)Lc8/Nnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lc8/nnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;)",
            "Lc8/Nnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "action":Lc8/nnq;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/nnq;Ljava/lang/Object;)Lc8/Nnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/nnq;Ljava/lang/Object;)Lc8/Nnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lc8/nnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;TR;)",
            "Lc8/Nnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "action":Lc8/nnq;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/Bnq;

    invoke-direct {v0, p0, p1}, Lc8/Bnq;-><init>(Lc8/nnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/onq;)Lc8/Onq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lc8/onq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lc8/Onq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "action":Lc8/onq;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/onq;Ljava/lang/Object;)Lc8/Onq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/onq;Ljava/lang/Object;)Lc8/Onq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lc8/onq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;)",
            "Lc8/Onq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "action":Lc8/onq;, "Lrx/functions/Action7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/Cnq;

    invoke-direct {v0, p0, p1}, Lc8/Cnq;-><init>(Lc8/onq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/pnq;)Lc8/Pnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lc8/pnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lc8/Pnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "action":Lc8/pnq;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/pnq;Ljava/lang/Object;)Lc8/Pnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/pnq;Ljava/lang/Object;)Lc8/Pnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lc8/pnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;)",
            "Lc8/Pnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "action":Lc8/pnq;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/Dnq;

    invoke-direct {v0, p0, p1}, Lc8/Dnq;-><init>(Lc8/pnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/qnq;)Lc8/Qnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/qnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lc8/Qnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "action":Lc8/qnq;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/qnq;Ljava/lang/Object;)Lc8/Qnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/qnq;Ljava/lang/Object;)Lc8/Qnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/qnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;)",
            "Lc8/Qnq",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "action":Lc8/qnq;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/tnq;

    invoke-direct {v0, p0, p1}, Lc8/tnq;-><init>(Lc8/qnq;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toFunc(Lc8/snq;)Lc8/Rnq;
    .locals 1
    .param p0, "action"    # Lc8/snq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/snq;",
            ")",
            "Lc8/Rnq",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lc8/Gnq;->toFunc(Lc8/snq;Ljava/lang/Object;)Lc8/Rnq;

    move-result-object v0

    return-object v0
.end method

.method public static toFunc(Lc8/snq;Ljava/lang/Object;)Lc8/Rnq;
    .locals 1
    .param p0, "action"    # Lc8/snq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/snq;",
            "TR;)",
            "Lc8/Rnq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lc8/unq;

    invoke-direct {v0, p0, p1}, Lc8/unq;-><init>(Lc8/snq;Ljava/lang/Object;)V

    return-object v0
.end method
