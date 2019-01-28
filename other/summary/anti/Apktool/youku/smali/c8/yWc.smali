.class public Lc8/yWc;
.super Lc8/CWc;
.source "YoukuAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EWc;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/CWc",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EWc;


# direct methods
.method constructor <init>(Lc8/EWc;)V
    .locals 1
    .param p1, "this$0"    # Lc8/EWc;

    .prologue
    .line 93
    .local p0, "this":Lc8/yWc;, "Lcom/baseproject/network/YoukuAsyncTask$2;"
    iput-object p1, p0, Lc8/yWc;->this$0:Lc8/EWc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/CWc;-><init>(Lc8/xWc;)V

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
    .line 95
    .local p0, "this":Lc8/yWc;, "Lcom/baseproject/network/YoukuAsyncTask$2;"
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    iget-object v0, p0, Lc8/yWc;->this$0:Lc8/EWc;

    iget-object v1, p0, Lc8/yWc;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/EWc;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
