.class public Lc8/YYe;
.super Ljava/lang/Object;
.source "AtomicCounter.java"


# static fields
.field private static value:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc8/YYe;->value:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrease(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 21
    sget-object v0, Lc8/YYe;->value:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public static getValue()I
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/YYe;->value:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static increase()I
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lc8/YYe;->value:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
