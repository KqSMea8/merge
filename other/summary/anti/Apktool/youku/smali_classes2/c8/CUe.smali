.class public abstract Lc8/CUe;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lc8/uWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lc8/IUe;

.field protected final timeout:Lc8/eWp;


# direct methods
.method private constructor <init>(Lc8/IUe;)V
    .locals 2

    .prologue
    .line 343
    iput-object p1, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lc8/eWp;

    iget-object v1, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v1}, Lc8/IUe;->access$600(Lc8/IUe;)Lc8/aWp;

    move-result-object v1

    invoke-interface {v1}, Lc8/aWp;->timeout()Lc8/wWp;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/eWp;-><init>(Lc8/wWp;)V

    iput-object v0, p0, Lc8/CUe;->timeout:Lc8/eWp;

    return-void
.end method

.method synthetic constructor <init>(Lc8/IUe;Lc8/BUe;)V
    .locals 0
    .param p1, "x0"    # Lc8/IUe;
    .param p2, "x1"    # Lc8/BUe;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lc8/CUe;-><init>(Lc8/IUe;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$500(Lc8/IUe;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v2}, Lc8/IUe;->access$500(Lc8/IUe;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    iget-object v1, p0, Lc8/CUe;->timeout:Lc8/eWp;

    invoke-static {v0, v1}, Lc8/IUe;->access$400(Lc8/IUe;Lc8/eWp;)V

    .line 360
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lc8/IUe;->access$502(Lc8/IUe;I)I

    .line 361
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$700(Lc8/IUe;)Lc8/aVe;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$700(Lc8/IUe;)Lc8/aVe;

    move-result-object v0

    iget-object v1, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-virtual {v0, v1}, Lc8/aVe;->streamFinished(Lc8/SUe;)V

    .line 364
    :cond_1
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lc8/CUe;->timeout:Lc8/eWp;

    return-object v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 367
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$500(Lc8/IUe;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0, v1}, Lc8/IUe;->access$502(Lc8/IUe;I)I

    .line 370
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$700(Lc8/IUe;)Lc8/aVe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$700(Lc8/IUe;)Lc8/aVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/aVe;->noNewStreams()V

    .line 372
    iget-object v0, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$700(Lc8/IUe;)Lc8/aVe;

    move-result-object v0

    iget-object v1, p0, Lc8/CUe;->this$0:Lc8/IUe;

    invoke-virtual {v0, v1}, Lc8/aVe;->streamFinished(Lc8/SUe;)V

    goto :goto_0
.end method
