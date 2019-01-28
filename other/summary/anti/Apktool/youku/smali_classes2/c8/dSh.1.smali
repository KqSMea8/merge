.class public abstract Lc8/dSh;
.super Ljava/lang/Object;
.source "HttpAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    .local p0, "this":Lc8/dSh;, "Lcom/youku/http/HttpAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/YRh;)V
    .locals 0
    .param p1, "x0"    # Lc8/YRh;

    .prologue
    .line 357
    .local p0, "this":Lc8/dSh;, "Lcom/youku/http/HttpAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lc8/dSh;-><init>()V

    return-void
.end method
