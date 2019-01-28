.class public Lc8/oJj;
.super Ljava/lang/Object;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pJj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoukuAsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lc8/pJj;


# direct methods
.method varargs constructor <init>(Lc8/pJj;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lc8/pJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/pJj;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lc8/oJj;, "Lcom/youku/network/YoukuAsyncTask$YoukuAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lc8/oJj;->mTask:Lc8/pJj;

    .line 386
    iput-object p2, p0, Lc8/oJj;->mData:[Ljava/lang/Object;

    .line 387
    return-void
.end method
