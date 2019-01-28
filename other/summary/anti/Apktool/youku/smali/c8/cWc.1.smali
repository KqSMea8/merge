.class public Lc8/cWc;
.super Lc8/gWc;
.source "ImageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hWc;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/gWc",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hWc;


# direct methods
.method constructor <init>(Lc8/hWc;)V
    .locals 1
    .param p1, "this$0"    # Lc8/hWc;

    .prologue
    .line 87
    .local p0, "this":Lc8/cWc;, "Lcom/baseproject/image/ImageAsyncTask$2;"
    iput-object p1, p0, Lc8/cWc;->this$0:Lc8/hWc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/gWc;-><init>(Lc8/bWc;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lc8/cWc;, "Lcom/baseproject/image/ImageAsyncTask$2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    iget-object v0, p0, Lc8/cWc;->this$0:Lc8/hWc;

    iget-object v1, p0, Lc8/cWc;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/hWc;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
