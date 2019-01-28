.class public final Lc8/Djd;
.super Lc8/Vjd;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gjd;->atomicLongAdapter(Lc8/Vjd;)Lc8/Vjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lc8/Vjd;


# direct methods
.method constructor <init>(Lc8/Vjd;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lc8/Djd;->val$longAdapter:Lc8/Vjd;

    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lc8/Djd;->read(Lc8/qmd;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lc8/Djd;->val$longAdapter:Lc8/Vjd;

    invoke-virtual {v1, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 359
    .local v0, "value":Ljava/lang/Number;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v1
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lc8/Djd;->write(Lc8/smd;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 4
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lc8/Djd;->val$longAdapter:Lc8/Vjd;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 356
    return-void
.end method
