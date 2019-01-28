.class public Lc8/bSh;
.super Ljava/lang/Object;
.source "HttpAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eSh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpAsyncTaskResult"
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

.field final mTask:Lc8/eSh;


# direct methods
.method varargs constructor <init>(Lc8/eSh;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lc8/eSh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eSh;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lc8/bSh;, "Lcom/youku/http/HttpAsyncTask$HttpAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lc8/bSh;->mTask:Lc8/eSh;

    .line 370
    iput-object p2, p0, Lc8/bSh;->mData:[Ljava/lang/Object;

    .line 371
    return-void
.end method
