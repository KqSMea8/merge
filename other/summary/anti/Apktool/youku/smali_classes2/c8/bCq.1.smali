.class public final Lc8/bCq;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aCq;,
        Lc8/ZBq;
    }
.end annotation


# static fields
.field private static final UNSUBSCRIBED:Lc8/aCq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lc8/aCq;

    invoke-direct {v0}, Lc8/aCq;-><init>()V

    sput-object v0, Lc8/bCq;->UNSUBSCRIBED:Lc8/aCq;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lc8/hnq;)Lc8/Pmq;
    .locals 1
    .param p0, "unsubscribe"    # Lc8/hnq;

    .prologue
    .line 78
    invoke-static {p0}, Lc8/RBq;->create(Lc8/hnq;)Lc8/RBq;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lc8/Pmq;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lc8/RBq;->create()Lc8/RBq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Future;)Lc8/Pmq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lc8/ZBq;

    invoke-direct {v0, p0}, Lc8/ZBq;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static varargs from([Lc8/Pmq;)Lc8/SBq;
    .locals 1
    .param p0, "subscriptions"    # [Lc8/Pmq;

    .prologue
    .line 120
    new-instance v0, Lc8/SBq;

    invoke-direct {v0, p0}, Lc8/SBq;-><init>([Lc8/Pmq;)V

    return-object v0
.end method

.method public static unsubscribed()Lc8/Pmq;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc8/bCq;->UNSUBSCRIBED:Lc8/aCq;

    return-object v0
.end method
