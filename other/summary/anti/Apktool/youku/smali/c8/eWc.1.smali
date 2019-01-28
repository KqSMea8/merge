.class public Lc8/eWc;
.super Ljava/lang/Object;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageAsyncTaskResult"
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

.field final mTask:Lc8/hWc;


# direct methods
.method varargs constructor <init>(Lc8/hWc;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lc8/hWc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/hWc;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lc8/eWc;, "Lcom/baseproject/image/ImageAsyncTask$ImageAsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lc8/eWc;->mTask:Lc8/hWc;

    .line 379
    iput-object p2, p0, Lc8/eWc;->mData:[Ljava/lang/Object;

    .line 380
    return-void
.end method
