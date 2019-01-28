.class public Lc8/HUe;
.super Lc8/CUe;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lc8/IUe;


# direct methods
.method private constructor <init>(Lc8/IUe;)V
    .locals 1

    .prologue
    .line 480
    iput-object p1, p0, Lc8/HUe;->this$0:Lc8/IUe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/CUe;-><init>(Lc8/IUe;Lc8/BUe;)V

    return-void
.end method

.method synthetic constructor <init>(Lc8/IUe;Lc8/BUe;)V
    .locals 0
    .param p1, "x0"    # Lc8/IUe;
    .param p2, "x1"    # Lc8/BUe;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lc8/HUe;-><init>(Lc8/IUe;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    iget-boolean v0, p0, Lc8/HUe;->closed:Z

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-boolean v0, p0, Lc8/HUe;->inputExhausted:Z

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lc8/HUe;->unexpectedEndOfInput()V

    .line 503
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/HUe;->closed:Z

    goto :goto_0
.end method

.method public read(Lc8/YVp;J)J
    .locals 6
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 485
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_0
    iget-boolean v4, p0, Lc8/HUe;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 487
    :cond_1
    iget-boolean v4, p0, Lc8/HUe;->inputExhausted:Z

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 495
    :cond_2
    :goto_0
    return-wide v0

    .line 489
    :cond_3
    iget-object v4, p0, Lc8/HUe;->this$0:Lc8/IUe;

    invoke-static {v4}, Lc8/IUe;->access$600(Lc8/IUe;)Lc8/aWp;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lc8/aWp;->read(Lc8/YVp;J)J

    move-result-wide v0

    .line 490
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 491
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/HUe;->inputExhausted:Z

    .line 492
    invoke-virtual {p0}, Lc8/HUe;->endOfInput()V

    move-wide v0, v2

    .line 493
    goto :goto_0
.end method
