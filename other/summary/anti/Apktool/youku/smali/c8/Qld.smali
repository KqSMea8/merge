.class public Lc8/Qld;
.super Lc8/Vjd;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rld;->create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rld;

.field final synthetic val$dateTypeAdapter:Lc8/Vjd;


# direct methods
.method constructor <init>(Lc8/Rld;Lc8/Vjd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Rld;

    .prologue
    .line 579
    iput-object p1, p0, Lc8/Qld;->this$0:Lc8/Rld;

    iput-object p2, p0, Lc8/Qld;->val$dateTypeAdapter:Lc8/Vjd;

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
    .line 579
    invoke-virtual {p0, p1}, Lc8/Qld;->read(Lc8/qmd;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lc8/qmd;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lc8/Qld;->val$dateTypeAdapter:Lc8/Vjd;

    invoke-virtual {v1, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 582
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic write(Lc8/smd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lc8/Qld;->write(Lc8/smd;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lc8/smd;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "out"    # Lc8/smd;
    .param p2, "value"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lc8/Qld;->val$dateTypeAdapter:Lc8/Vjd;

    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    .line 587
    return-void
.end method
