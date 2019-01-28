.class public Lc8/kUe;
.super Lc8/dWp;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mUe;-><init>(Lc8/aWp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mUe;


# direct methods
.method constructor <init>(Lc8/mUe;Lc8/uWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mUe;
    .param p2, "x0"    # Lc8/uWp;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/kUe;->this$0:Lc8/mUe;

    invoke-direct {p0, p2}, Lc8/dWp;-><init>(Lc8/uWp;)V

    return-void
.end method


# virtual methods
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

    .line 56
    iget-object v4, p0, Lc8/kUe;->this$0:Lc8/mUe;

    invoke-static {v4}, Lc8/mUe;->access$000(Lc8/mUe;)I

    move-result v4

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 60
    :goto_0
    return-wide v0

    .line 57
    :cond_0
    iget-object v4, p0, Lc8/kUe;->this$0:Lc8/mUe;

    invoke-static {v4}, Lc8/mUe;->access$000(Lc8/mUe;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-super {p0, p1, v4, v5}, Lc8/dWp;->read(Lc8/YVp;J)J

    move-result-wide v0

    .line 58
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lc8/kUe;->this$0:Lc8/mUe;

    iget-object v3, p0, Lc8/kUe;->this$0:Lc8/mUe;

    invoke-static {v3}, Lc8/mUe;->access$000(Lc8/mUe;)I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v4, v0

    long-to-int v3, v4

    invoke-static {v2, v3}, Lc8/mUe;->access$002(Lc8/mUe;I)I

    goto :goto_0
.end method
