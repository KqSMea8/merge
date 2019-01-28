.class public Lc8/JUe;
.super Lc8/dWp;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KUe;


# direct methods
.method public constructor <init>(Lc8/KUe;Lc8/uWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KUe;
    .param p2, "delegate"    # Lc8/uWp;

    .prologue
    .line 287
    iput-object p1, p0, Lc8/JUe;->this$0:Lc8/KUe;

    .line 288
    invoke-direct {p0, p2}, Lc8/dWp;-><init>(Lc8/uWp;)V

    .line 289
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lc8/JUe;->this$0:Lc8/KUe;

    invoke-static {v0}, Lc8/KUe;->access$000(Lc8/KUe;)Lc8/aVe;

    move-result-object v0

    iget-object v1, p0, Lc8/JUe;->this$0:Lc8/KUe;

    invoke-virtual {v0, v1}, Lc8/aVe;->streamFinished(Lc8/SUe;)V

    .line 293
    invoke-super {p0}, Lc8/dWp;->close()V

    .line 294
    return-void
.end method
